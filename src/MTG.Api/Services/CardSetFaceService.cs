using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardSetFaceService(MtgDbContext db) : ICardSetFaceService
{
    public async Task<CardSetFace?> AddCardSetFace(CardSetFace cardSetFace)
    {
        var cardSetFaceDb = await db.CardSetFaces.FirstOrDefaultAsync(x => x.CardSetId.Equals(cardSetFace.CardSetId) && x.FaceId.Equals(cardSetFace.FaceId));

        if (cardSetFaceDb != null)
            return cardSetFaceDb;

        db.CardSetFaces.Add(cardSetFace);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? cardSetFace : null;
    }

    public async Task<IList<CardSetFace>> GetCardSetFacesByCardSetId(Guid cardSetId)
    {
        return await db.CardSetFaces.Where(x => x.CardSetId.Equals(cardSetId)).ToListAsync();
    }
}
