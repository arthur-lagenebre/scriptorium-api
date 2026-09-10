using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class SetService(MtgDbContext db) : ISetService
{
    public async Task<Set?> AddSet(Set set)
    {
        var setDb = await db.Sets.FirstOrDefaultAsync(x => x.Code.Equals(set.Code));

        if (setDb != null)
            return setDb;

        db.Sets.Add(set);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? set : null;
    }

    public async Task<IList<Set>> GetSets()
    {
        return await db.Sets.ToListAsync();
    }

    public async Task<Set?> GetSetByCode(string code)
    {
        return await db.Sets.FirstOrDefaultAsync(x => x.Code.Equals(code));
    }
}
