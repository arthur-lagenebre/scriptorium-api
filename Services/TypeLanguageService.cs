using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

public class TypeLanguageService : ITypeLanguageService
{
    private readonly MTGDbContext _db;

    public TypeLanguageService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<TypeLanguage>> GetTypeLanguagesByLanguage(string language)
    {
        return await _db.TypeLanguages.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<TypeLanguage?> AddType(TypeLanguage typeLanguage)
    {
        var typeLanguageDb = await _db.TypeLanguages.FirstOrDefaultAsync(x => x.TypeId.Equals(typeLanguage.TypeId) && x.Language.Equals(typeLanguage.Language));

        if (typeLanguageDb != null)
            return typeLanguageDb;

        _db.TypeLanguages.Add(typeLanguage);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? typeLanguage : null;
    }
}