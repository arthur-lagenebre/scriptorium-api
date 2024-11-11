using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

public class SupertypeService : ISupertypeService
{
    private readonly MTGDbContext _db;

    public SupertypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<Supertype>> GetSupertypes()
    {
        return await _db.Supertypes.ToListAsync();
    }

    public async Task<Supertype?> AddSupertype(Supertype supertype)
    {
        var supertypeDb = await _db.Supertypes.FirstOrDefaultAsync(x => x.DefaultName.Equals(supertype.DefaultName));

        if (supertypeDb != null)
            return supertypeDb;

        _db.Supertypes.Add(supertype);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? supertype : null;
    }
}
