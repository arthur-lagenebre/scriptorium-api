using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardSubtypeService : ICardSubtypeService
{
    private readonly MTGDbContext _db;

    public CardSubtypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardSubtype?> AddCardSubtype(CardSubtype cardSubtype)
    {
        var cardSubtypeDb = await _db.CardSubtypes.FirstOrDefaultAsync(x => x.CardId.Equals(cardSubtype.CardId) && x.FaceId.Equals(cardSubtype.FaceId) && x.SubtypeId.Equals(cardSubtype.SubtypeId));

        if (cardSubtypeDb != null)
            return cardSubtypeDb;

        _db.CardSubtypes.Add(cardSubtype);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardSubtype : null;
    }

    public async Task<IList<CardSubtype>> GetCardSubtypesByCardId(Guid cardId)
    {
        return await _db.CardSubtypes.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}