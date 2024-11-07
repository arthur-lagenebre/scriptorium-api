using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardNameService : ICardNameService
{
    private readonly MTGDbContext _db;

    public CardNameService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardName?> AddCardName(CardName cardName)
    {
        var cardNameDb = await _db.CardNames.FirstOrDefaultAsync(x => x.OracleId.Equals(cardName.OracleId) && x.FaceId.Equals(cardName.FaceId) && x.Language.Equals(cardName.Language));

        if (cardNameDb != null)
            return cardNameDb;

        _db.CardNames.Add(cardName);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardName : null;
    }

    public async Task<IList<CardName>> GetCardNamesByOracleId(Guid oracleId)
    {
        return await _db.CardNames.Where(x => x.OracleId.Equals(oracleId)).ToListAsync();
    }
}
