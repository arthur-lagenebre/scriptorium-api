using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Services;

public class CardNameService(MtgDbContext db) : ICardNameService
{
    public async Task<CardName?> AddCardName(CardName cardName)
    {
        var cardNameDb = await db.CardNames.FirstOrDefaultAsync(x => x.CardId.Equals(cardName.CardId) && x.FaceId.Equals(cardName.FaceId) && x.Language.Equals(cardName.Language));

        if (cardNameDb != null)
            return cardNameDb;

        db.CardNames.Add(cardName);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? cardName : null;
    }

    public async Task<IList<CardName>> GetCardNamesByCardId(Guid id)
    {
        return await db.CardNames.Where(x => x.CardId.Equals(id)).ToListAsync();
    }
}