using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class RelatedCardService : IRelatedCardService
{
    private readonly MTGDbContext _db;

    public RelatedCardService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<RelatedCard?> AddRelatedCard(RelatedCard relatedCard)
    {
        var relatedCardDb = await _db.RelatedCards.FirstOrDefaultAsync(x => x.OracleId.Equals(relatedCard.OracleId));

        if (relatedCardDb != null)
            return relatedCardDb;

        _db.RelatedCards.Add(relatedCard);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? relatedCard : null;
    }

    public async Task<IList<RelatedCard>> GetRelatedCardsByOracleId(Guid oracleId)
    {
        return await _db.RelatedCards.Where(x => x.OracleId.Equals(oracleId)).ToListAsync();
    }
}
