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

    public async Task<IList<CardFace>> GetCardFacesByCardId(Guid cardId)
    {
        return await _db.CardFaces.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }

    public async Task<CardFace?> AddCardFace(CardFace cardFace)
    {
        var cardFaceDb = await _db.CardFaces.FirstOrDefaultAsync(x => x.CardId.Equals(cardFace.CardId) && x.FaceId.Equals(cardFace.FaceId));

        if (cardFaceDb != null)
            return cardFaceDb;

        _db.CardFaces.Add(cardFace);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardFace : null;
    }
}