using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class SubtypeService : ISubtypeService
{
    private readonly MTGDbContext _db;

    public SubtypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<Subtype>> GetSubtypesByLanguage(string language)
    {
        return await _db.Subtypes.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<Subtype?> AddSubtype(Subtype subtype)
    {
        var supertypeDb = await _db.Subtypes.FirstOrDefaultAsync(x => x.Language.Equals(subtype.Language) && x.Name.Equals(subtype.Name));

        if (supertypeDb != null)
            return supertypeDb;

        _db.Subtypes.Add(subtype);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? subtype : null;
    }
}
