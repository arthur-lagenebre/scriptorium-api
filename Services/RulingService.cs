using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class RulingService(MtgDbContext db) : IRulingService
{
    public async Task<Ruling?> AddRuling(Ruling ruling)
    {
        var rulingDb = await db.Rulings.FirstOrDefaultAsync(x => x.CardId.Equals(ruling.CardId));

        if (rulingDb != null)
            return rulingDb;

        db.Rulings.Add(ruling);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? ruling : null;
    }

    public async Task<IList<Ruling>> GetRulingsByCardId(Guid cardId)
    {
        return await db.Rulings.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}