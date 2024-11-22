using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class RelatedCardService(MtgDbContext db) : IRelatedCardService
{
    public async Task<RelatedCard?> AddRelatedCard(RelatedCard relatedCard)
    {
        var relatedCardDb = await db.RelatedCards.FirstOrDefaultAsync(x => x.CardId.Equals(relatedCard.CardId));

        if (relatedCardDb != null)
            return relatedCardDb;

        db.RelatedCards.Add(relatedCard);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? relatedCard : null;
    }

    public async Task<IList<RelatedCard>> GetRelatedCardsByCardId(Guid cardId)
    {
        return await db.RelatedCards.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}