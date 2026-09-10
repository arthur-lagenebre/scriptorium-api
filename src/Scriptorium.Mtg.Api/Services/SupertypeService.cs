using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Services;

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
