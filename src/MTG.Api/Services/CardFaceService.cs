using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardFaceService(MtgDbContext db) : ICardFaceService
{
    public async Task<IList<CardFace>> GetCardFacesByCardId(Guid cardId)
    {
        return await db.CardFaces.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }

    public async Task<CardFace?> AddCardFace(CardFace cardFace)
    {
        var cardFaceDb = await db.CardFaces.FirstOrDefaultAsync(x => x.CardId.Equals(cardFace.CardId) && x.FaceId.Equals(cardFace.FaceId));

        if (cardFaceDb != null)
            return cardFaceDb;

        db.CardFaces.Add(cardFace);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? cardFace : null;
    }
}