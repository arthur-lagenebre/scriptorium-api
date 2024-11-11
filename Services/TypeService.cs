using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;

namespace MTG.Api.Services;

public class TypeService : ITypeService
{
    private readonly MTGDbContext _db;

    public TypeService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<Database.Models.Typeline.Type>> GetTypes()
    {
        return await _db.Types.ToListAsync();
    }

    public async Task<Database.Models.Typeline.Type?> AddType(Database.Models.Typeline.Type type)
    {
        var typeDb = await _db.Types.FirstOrDefaultAsync(x => x.DefaultName.Equals(type.DefaultName));

        if (typeDb != null)
            return typeDb;

        _db.Types.Add(type);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? type : null;
    }
}