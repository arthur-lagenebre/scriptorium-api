using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Services;

public class CardSetService(MtgDbContext db) : ICardSetService
{
    public async Task<CardSet?> AddCardSet(CardSet cardSet)
    {
        var cardSetDb = await db.CardSets.FirstOrDefaultAsync(x => x.CardId.Equals(cardSet.CardId) && x.SetId.Equals(cardSet.SetId) && x.CollectorNumber.Equals(cardSet.CollectorNumber));

        if (cardSetDb != null)
            return cardSetDb;

        db.CardSets.Add(cardSet);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? cardSet : null;
    }

    public async Task<IList<CardSet>> GetCardSetsByCardId(Guid cardId)
    {
        return await db.CardSets.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}