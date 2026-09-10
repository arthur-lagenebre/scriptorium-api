using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Services;

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