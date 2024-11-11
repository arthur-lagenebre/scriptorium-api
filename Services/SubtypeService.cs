using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

public class SubtypeService : ISubtypeService
{
    private readonly MTGDbContext _db;

    public SubtypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<Subtype>> GetSubtypes()
    {
        return await _db.Subtypes.ToListAsync();
    }

    public async Task<Subtype?> AddSubtype(Subtype subtype)
    {
        var subtypeDb = await _db.Subtypes.FirstOrDefaultAsync(x => x.DefaultName.Equals(subtype.DefaultName));

        if (subtypeDb != null)
            return subtypeDb;

        _db.Subtypes.Add(subtype);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? subtype : null;
    }
}
