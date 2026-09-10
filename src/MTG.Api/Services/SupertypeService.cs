using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

public class SupertypeService(MtgDbContext db) : ISupertypeService
{
    public async Task<IList<Supertype>> GetSupertypes()
    {
        return await db.Supertypes.ToListAsync();
    }

    public async Task<Supertype?> AddSupertype(Supertype supertype)
    {
        var supertypeDb = await db.Supertypes.FirstOrDefaultAsync(x => x.DefaultName.Equals(supertype.DefaultName));

        if (supertypeDb != null)
            return supertypeDb;

        db.Supertypes.Add(supertype);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? supertype : null;
    }
}
