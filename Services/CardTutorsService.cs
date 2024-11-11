using System.Runtime.InteropServices;
using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;
using MTG.Database.Models.Tutor;

namespace MTG.Api.Services;

public class CardTutorsService : ICardTutorsService
{
    private readonly MTGDbContext _db;

    public CardTutorsService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<CardTutor>> GetCardTutorsByCardName(string name)
    {
        var cardTutors = new List<CardTutor>();
        var cards = _db.Cards.Include(x => x.CardNames)
                              .Include(x => x.CardTexts)
                              .Include(x => x.CardFaces)
                              .Include(x => x.CardSets).ThenInclude(x => x.Set)
                              .Include(x => x.CardTypelines)
                              .Include(x => x.RelatedCards)
                              .Where(c => c.CardNames.Any(cn => cn.Language.Equals("en") && cn.Value.Contains(name)));

        foreach (var card in cards)
        {
            cardTutors.Add(ConvertCard(card));
        }

        return cardTutors;
    }

    private static CardTutor ConvertCard(Card card)
    {
        var names = card.CardFaces.Count > 0 ? [] : GetNames(card.CardNames);
        var typelines = card.CardFaces.Count > 0 ? [] : GetTypelines(card.CardTypelines);
        var texts = card.CardFaces.Count > 0 ? [] : GetTexts(card.CardTexts);
        var sets = GetSets(card.CardSets);
        var languages = card.CardNames.Select(x => x.Language).ToList();
        var cardFaces = GetCardFaceTutors(card.CardFaces, card.CardNames, card.CardTexts, card.CardTypelines);
        var relatedCards = GetRelatedCards(card.RelatedCards);

        return new CardTutor(card.Id.ToString(), names, typelines, texts, card.ManaCost, sets, languages, cardFaces, relatedCards, card.Power, card.Toughness, card.Loyalty, card.HandModifier, card.LifeModifier);
    }

    private static List<LanguageTutor> GetNames(ICollection<CardName> cardNames)
    {
        var names = new List<LanguageTutor>();

        foreach (var cardName in cardNames)
            names.Add(new LanguageTutor(cardName.Language, cardName.Value));

        return names;
    }

    private static List<LanguageTutor> GetTypelines(ICollection<CardTypeline> cardTypelines)
    {
        var typelines = new List<LanguageTutor>();

        foreach (var cardTypeline in cardTypelines)
            typelines.Add(new LanguageTutor(cardTypeline.Language, cardTypeline.Value));

        return typelines;
    }

    private static List<LanguageTutor> GetTexts(ICollection<CardText> cardTexts)
    {
        var names = new List<LanguageTutor>();

        foreach (var cardText in cardTexts)
            names.Add(new LanguageTutor(cardText.Language, cardText.Value));

        return names;
    }

    private static List<SetTutor> GetSets(ICollection<CardSet> cardSets)
    {
        var sets = new List<SetTutor>();

        foreach (var (index, cardSet) in cardSets.OrderBy(x => x.Set.ReleasedAt).Select((item, index) => (index, item)))
            sets.Add(new SetTutor(cardSet.Set.Name, cardSet.Set.Code, index, cardSet.CollectorNumber, cardSet.Rarity, [], []));

        return sets;
    }

    private static List<CardFaceTutor> GetCardFaceTutors(ICollection<CardFace> cardFaces, ICollection<CardName> cardNames, ICollection<CardText> cardTexts, ICollection<CardTypeline> cardTypelines)
    {
        var cardFaceTutors = new List<CardFaceTutor>();

        foreach(var face in cardFaces)
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
        var relatedCardTutors = new List<RelatedCardTutor>();

        foreach (var relatedCard in relatedCards)
        {
            relatedCardTutors.Add(new RelatedCardTutor(relatedCard.Name, string.Empty, relatedCard.Component));
        }

        return relatedCardTutors;
    }
}
