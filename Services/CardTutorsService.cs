using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;
using MTG.Database.Models.Card;
using MTG.Database.Models.Tutor;

namespace MTG.Api.Services;

public class CardTutorsService(MtgDbContext db) : ICardTutorsService
{
    public IList<CardTutor> GetCardTutorsByCardName(string name)
    {
        var cards = db.Cards.Include(x => x.CardNames)
                              .Include(x => x.CardTexts)
                              .Include(x => x.CardFaces)
                              .Include(x => x.CardSets).ThenInclude(x => x.Set)
                              .Include(x => x.CardSets).ThenInclude(x => x.CardSetFaces)
                              .Include(x => x.CardTypelines)
                              .Include(x => x.RelatedCards)
                              .Include(x => x.Rulings)
                              .Where(c => c.CardNames.Any(cn => cn.Language.Equals("en") && cn.Value.Contains(name)))
                              .ToList();

        return cards.Select(ConvertCard).ToList();
    }

    public CardTutor? GetCardTutorById(Guid id)
    {
        var card = db.Cards.Include(x => x.CardNames)
                            .Include(x => x.CardTexts)
                            .Include(x => x.CardFaces)
                            .Include(x => x.CardSets).ThenInclude(x => x.Set)
                            .Include(x => x.CardSets).ThenInclude(x => x.CardSetFaces)
                            .Include(x => x.CardTypelines)
                            .Include(x => x.RelatedCards)
                            .Include(x => x.Rulings)
                            .FirstOrDefault(c => c.Id == id);

        return card != null ? ConvertCard(card) : null;
    }

    private CardTutor ConvertCard(Card card)
    {
        var names = card.CardFaces.Count > 0 ? [] : GetNames(card.CardNames);
        var typelines = card.CardFaces.Count > 0 ? [] : GetTypelines(card.CardTypelines);
        var texts = card.CardFaces.Count > 0 ? [] : GetTexts(card.CardTexts);
        var sets = GetSets(card.CardSets);
        var languages = card.CardNames.Select(x => x.Language).OrderBy(x => x).ToList();
        var cardFaces = GetCardFaceTutors(card.CardFaces, card.CardNames, card.CardTexts, card.CardTypelines);
        var relatedCards = GetRelatedCards(card.RelatedCards);
        var rulings = GetRulings(card.Rulings);

        return new CardTutor(card.Id.ToString(), names, typelines, texts, rulings, card.ManaCost, sets, languages, cardFaces, relatedCards, card.Power, card.Toughness, card.Loyalty, card.HandModifier, card.LifeModifier);
    }

    private static List<RulingTutor> GetRulings(ICollection<Ruling> cardRulings)
    {
        return cardRulings.Select(cardRuling => new RulingTutor(cardRuling.Language, cardRuling.Rule, cardRuling.PublishedAt)).ToList();
    }

    private static List<LanguageTutor> GetNames(ICollection<CardName> cardNames)
    {
        return cardNames.Select(cardName => new LanguageTutor(cardName.Language, cardName.Value)).ToList();
    }

    private static List<LanguageTutor> GetTypelines(ICollection<CardTypeline> cardTypelines)
    {
        return cardTypelines.Select(cardTypeline => new LanguageTutor(cardTypeline.Language, cardTypeline.Value)).ToList();
    }

    private static List<LanguageTutor> GetTexts(ICollection<CardText> cardTexts)
    {
        return cardTexts.Select(cardText => new LanguageTutor(cardText.Language, cardText.Value)).ToList();
    }

    private List<SetTutor> GetSets(ICollection<CardSet> cardSets)
    {
        var sets = new List<SetTutor>();

        foreach (var (index, cardSet) in cardSets.OrderBy(x => x.Set.ReleasedAt).Select((item, index) => (index, item)))
        {
            var flavors = GetFlavors(cardSet.CardSetFaces);

            sets.Add(new SetTutor(cardSet.Set.Name, cardSet.Set.Code, index, cardSet.CollectorNumber, cardSet.Rarity, ["https://cards.scryfall.io/large/front/a/8/a8a64329-09fc-4e0d-b7d1-378635f2801a.jpg"], flavors));
        }

        return sets;
    }

    private List<FlavorTutor> GetFlavors(ICollection<CardSetFace> cardSetFaces)
    {
        return (from cardSetFace in cardSetFaces let artists = GetArtists(cardSetFace.ArtistsId) select new FlavorTutor(cardSetFace.FaceId, string.Join(" & ", artists), cardSetFace.FlavorText ?? string.Empty, cardSetFace.FlavorName ?? string.Empty)).ToList();
    }

    private List<string> GetArtists(IList<Guid>? artistsId)
    {
        return artistsId == null ? [] : artistsId.Select(artistId => db.Artists.First(x => x.Id == artistId).Name).ToList();
    }

    private List<CardFaceTutor> GetCardFaceTutors(ICollection<CardFace> cardFaces, ICollection<CardName> cardNames, ICollection<CardText> cardTexts, ICollection<CardTypeline> cardTypelines)
    {
        var cardFaceTutors = new List<CardFaceTutor>();

        foreach (var face in cardFaces)
        {
            var names = GetNames(cardNames.Where(x => x.FaceId == face.FaceId).ToList());
            var texts = GetTexts(cardTexts.Where(x => x.FaceId == face.FaceId).ToList());
            var typelines = GetTypelines(cardTypelines.Where(x => x.FaceId == face.FaceId).ToList());

            cardFaceTutors.Add(new CardFaceTutor(face.FaceId, face.ManaCost, names, texts, typelines, face.Power, face.Toughness, face.Loyalty, face.Defense));
        }

        return cardFaceTutors;
    }

    private List<RelatedCardTutor> GetRelatedCards(ICollection<RelatedCard> relatedCards)
    {
        return relatedCards.Select(relatedCard => new RelatedCardTutor(relatedCard.Name, string.Empty, relatedCard.Component)).ToList();
    }
}
