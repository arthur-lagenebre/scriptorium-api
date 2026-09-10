using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;

namespace MTG.Api.Services;

public class TypeService(MtgDbContext db) : ITypeService
{
    public async Task<IList<Database.Models.Typeline.Type>> GetTypes()
    {
        return await db.Types.ToListAsync();
    }

    public async Task<Database.Models.Typeline.Type?> AddType(Database.Models.Typeline.Type type)
    {
        var typeDb = await db.Types.FirstOrDefaultAsync(x => x.DefaultName.Equals(type.DefaultName));

        if (typeDb != null)
            return typeDb;

        db.Types.Add(type);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? type : null;
    }
}