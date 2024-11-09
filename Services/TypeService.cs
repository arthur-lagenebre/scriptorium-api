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

    public async Task<IList<Database.Models.Type>> GetTypesByLanguage(string language)
    {
        return await _db.Types.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<Database.Models.Type?> AddType(Database.Models.Type type)
    {
        var typeDb = await _db.Types.FirstOrDefaultAsync(x => x.Language.Equals(type.Language) && x.Name.Equals(type.Name));

        if (typeDb != null)
            return typeDb;

        _db.Types.Add(type);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? type : null;
    }
}