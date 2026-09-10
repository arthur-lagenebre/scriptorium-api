using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Services;

public class SubtypeService(MtgDbContext db) : ISubtypeService
{
    public async Task<IList<Subtype>> GetSubtypes()
    {
        return await db.Subtypes.ToListAsync();
    }

    public async Task<Subtype?> AddSubtype(Subtype subtype)
    {
        var subtypeDb = await db.Subtypes.FirstOrDefaultAsync(x => x.DefaultName.Equals(subtype.DefaultName));

        if (subtypeDb != null)
            return subtypeDb;

        db.Subtypes.Add(subtype);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? subtype : null;
    }
}
