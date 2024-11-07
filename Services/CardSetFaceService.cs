using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardSetFaceService : ICardSetFaceService
{
    private readonly MTGDbContext _db;

    public CardSetFaceService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardSetFace?> AddCardSetFace(CardSetFace cardSetFace)
    {
        var cardSetFaceDb = await _db.CardSetFaces.FirstOrDefaultAsync(x => x.CardSetId.Equals(cardSetFace.CardSetId) && x.FaceId.Equals(cardSetFace.FaceId));

        if (cardSetFaceDb != null)
            return cardSetFaceDb;

        _db.CardSetFaces.Add(cardSetFace);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardSetFace : null;
    }

    public async Task<IList<CardSetFace>> GetCardSetFacesByCardSetId(Guid cardSetId)
    {
        return await _db.CardSetFaces.Where(x => x.CardSetId.Equals(cardSetId)).ToListAsync();
    }
}
