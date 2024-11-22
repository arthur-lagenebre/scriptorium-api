using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

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
