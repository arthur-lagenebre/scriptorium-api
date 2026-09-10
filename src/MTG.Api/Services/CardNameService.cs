using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

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