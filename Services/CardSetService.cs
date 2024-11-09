using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardSetService : ICardSetService
{
    private readonly MTGDbContext _db;

    public CardSetService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardSet?> AddCardSet(CardSet cardSet)
    {
        var cardSetDb = await _db.CardSets.FirstOrDefaultAsync(x => x.CardId.Equals(cardSet.CardId) && x.SetId.Equals(cardSet.SetId) && x.CollectorNumber.Equals(cardSet.CollectorNumber));

        if (cardSetDb != null)
            return cardSetDb;

        _db.CardSets.Add(cardSet);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardSet : null;
    }

    public async Task<IList<CardSet>> GetCardSetsByCardId(Guid cardId)
    {
        return await _db.CardSets.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}