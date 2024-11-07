using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class SupertypeService : ISupertypeService
{
    private readonly MTGDbContext _db;

    public SupertypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<Supertype>> GetSupertypesByLanguage(string language)
    {
        return await _db.Supertypes.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<Supertype?> AddSupertype(Supertype supertype)
    {
        var supertypeDb = await _db.Supertypes.FirstOrDefaultAsync(x => x.Language.Equals(supertype.Language) && x.Name.Equals(supertype.Name));

        if (supertypeDb != null)
            return supertypeDb;

        _db.Supertypes.Add(supertype);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? supertype : null;
    }
}
