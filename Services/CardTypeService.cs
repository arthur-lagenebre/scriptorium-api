using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardTypeService : ICardTypeService
{
    private readonly MTGDbContext _db;

    public CardTypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardType?> AddCardType(CardType cardType)
    {
        var cardTypeDb = await _db.CardTypes.FirstOrDefaultAsync(x => x.OracleId.Equals(cardType.OracleId) && x.FaceId.Equals(cardType.FaceId) && x.TypeId.Equals(cardType.TypeId));

        if (cardTypeDb != null)
            return cardTypeDb;

        _db.CardTypes.Add(cardType);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardType : null;
    }

    public async Task<CardType?> GetCardTypeByOracleId(Guid oracleId)
    {
        return await _db.CardTypes.FirstOrDefaultAsync(x => x.OracleId.Equals(oracleId));
    }
}
