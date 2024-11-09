using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardService : ICardService
{
    private readonly MTGDbContext _db;

    public CardService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<Card?> AddCard(Card card)
    {
        var cardDb = await _db.Cards.FirstOrDefaultAsync(x => x.Id.Equals(card.Id));

        if (cardDb != null)
            return cardDb;

        _db.Cards.Add(card);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? card : null;
    }

    public async Task<Card?> GetCardById(Guid id)
    {
        return await _db.Cards.Include(x => x.CardNames)
                              .Include(x => x.CardTexts)
                              .Include(x => x.CardFaces)
                              .Include(x => x.CardSets)
                              .Include(x => x.CardSubtypes)
                              .Include(x => x.CardSupertypes)
                              .Include(x => x.CardTypes)
                              .Include(x => x.RelatedCards)
                              .FirstOrDefaultAsync(x => x.Id == id);
    }
}