using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class SetService : ISetService
{
    private readonly MTGDbContext _db;

    public SetService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<Set?> AddSet(Set set)
    {
        var setDb = await _db.Sets.FirstOrDefaultAsync(x => x.Code.Equals(set.Code));

        if (setDb != null)
            return setDb;

        _db.Sets.Add(set);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? set : null;
    }

    public async Task<IList<Set>> GetSets()
    {
        return await _db.Sets.ToListAsync();
    }

    public async Task<Set?> GetSetByCode(string code)
    {
        return await _db.Sets.FirstOrDefaultAsync(x => x.Code.Equals(code));
    }
}
