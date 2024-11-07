using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardFaceService : ICardFaceService
{
    private readonly MTGDbContext _db;

    public CardFaceService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<CardFace>> GetCardFacesByOracleId(Guid oracleId)
    {
        return await _db.CardFaces.Where(x => x.OracleId.Equals(oracleId)).ToListAsync();
    }

    public async Task<CardFace?> AddCardFace(CardFace cardFace)
    {
        var cardFaceDb = await _db.CardFaces.FirstOrDefaultAsync(x => x.OracleId.Equals(cardFace.OracleId) && x.FaceId.Equals(cardFace.FaceId));

        if (cardFaceDb != null)
            return cardFaceDb;

        _db.CardFaces.Add(cardFace);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardFace : null;
    }
}
