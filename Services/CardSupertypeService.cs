using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardSupertypeService : ICardSupertypeService
{
    private readonly MTGDbContext _db;

    public CardSupertypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardSupertype?> AddCardSupertype(CardSupertype cardSupertype)
    {
        var cardNameDb = await _db.CardSupertypes.FirstOrDefaultAsync(x => x.CardId.Equals(cardSupertype.CardId) && x.FaceId.Equals(cardSupertype.FaceId) && x.SupertypeId.Equals(cardSupertype.SupertypeId));

        if (cardNameDb != null)
            return cardNameDb;

        _db.CardSupertypes.Add(cardSupertype);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardSupertype : null;
    }

    public async Task<CardSupertype?> GetCardSupertypeByCardId(Guid cardId)
    {
        return await _db.CardSupertypes.FirstOrDefaultAsync(x => x.Id.Equals(cardId));
    }
}