using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models;
using Scriptorium.Mtg.Models.Card;
using Scriptorium.Mtg.Models.Tutor;

namespace Scriptorium.Mtg.Api.Services;

public class CardTutorsService(MtgDbContext db) : ICardTutorsService
{
    public IList<CardTutor> GetCardTutorsByCardName(string name)
    {
        var cards = db.Cards.Include(x => x.CardNames)
                              .Include(x => x.CardTexts)
                              .Include(x => x.CardFaces)
                              .Include(x => x.CardSets).ThenInclude(x => x.Set)
                              .Include(x => x.CardSets).ThenInclude(x => x.CardSetFaces).ThenInclude(x => x.Flavors)
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
                            .Include(x => x.CardSets).ThenInclude(x => x.CardSetFaces).ThenInclude(x => x.Flavors)
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
        var languages = card.CardNames.Select(x => x.Language).Distinct().OrderBy(x => x).ToList();
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
            var cardSetTutors = GetCardSetTutors(cardSet.CardSetFaces);

            sets.Add(new SetTutor(cardSet.Set.Name, cardSet.Set.Code, index, cardSet.CollectorNumber, cardSet.Rarity, cardSet.NormalImagesUrl, cardSetTutors));
        }

        return sets;
    }

    private List<CardSetTutor> GetCardSetTutors(ICollection<CardSetFace> cardSetFaces)
    {
        var cardSets = new List<CardSetTutor>();

        foreach (var cardSetFace in cardSetFaces)
        {
            var flavors = GetFlavors(cardSetFace.Flavors);
            var artists = GetArtists(cardSetFace.ArtistsId);

            cardSets.Add(new CardSetTutor(cardSetFace.FaceId, string.Join(" & ", artists), flavors));
        }

        return cardSets;
    }

    private static List<FlavorTutor> GetFlavors(ICollection<CardSetFaceFlavor> cardSetFaceFlavors)
    {
        return (from cardSetFaceFlavor in cardSetFaceFlavors select new FlavorTutor(cardSetFaceFlavor.Language, cardSetFaceFlavor.FlavorText ?? string.Empty, cardSetFaceFlavor.FlavorName ?? string.Empty)).ToList();
    }

    private List<string> GetArtists(IList<Guid>? artistsId)
    {
        return artistsId == null ? [] : artistsId.Select(artistId => db.Artists.First(x => x.Id == artistId).Name).ToList();
    }

    private static List<CardFaceTutor> GetCardFaceTutors(ICollection<CardFace> cardFaces, ICollection<CardName> cardNames, ICollection<CardText> cardTexts, ICollection<CardTypeline> cardTypelines)
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

    private static List<RelatedCardTutor> GetRelatedCards(ICollection<RelatedCard> relatedCards)
    {
        return relatedCards.Select(relatedCard => new RelatedCardTutor(relatedCard.Name, string.Empty, relatedCard.Component)).ToList();
    }
}
