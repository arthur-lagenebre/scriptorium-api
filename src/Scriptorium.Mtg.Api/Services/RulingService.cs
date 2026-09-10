using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models;

namespace Scriptorium.Mtg.Api.Services;

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