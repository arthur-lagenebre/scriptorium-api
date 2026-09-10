using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;

namespace Scriptorium.Mtg.Api.Services;

public class TypeService(MtgDbContext db) : ITypeService
{
    public async Task<IList<Scriptorium.Mtg.Models.Typeline.Type>> GetTypes()
    {
        return await db.Types.ToListAsync();
    }

    public async Task<Scriptorium.Mtg.Models.Typeline.Type?> AddType(Scriptorium.Mtg.Models.Typeline.Type type)
    {
        var typeDb = await db.Types.FirstOrDefaultAsync(x => x.DefaultName.Equals(type.DefaultName));

        if (typeDb != null)
            return typeDb;

        db.Types.Add(type);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? type : null;
    }
}