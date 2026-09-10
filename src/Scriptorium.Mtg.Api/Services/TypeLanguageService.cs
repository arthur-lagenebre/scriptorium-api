using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Services;

public class TypeLanguageService(MtgDbContext db) : ITypeLanguageService
{
    public async Task<IList<TypeLanguage>> GetTypeLanguagesByLanguage(string language)
    {
        return await db.TypeLanguages.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<TypeLanguage?> AddType(TypeLanguage typeLanguage)
    {
        var typeLanguageDb = await db.TypeLanguages.FirstOrDefaultAsync(x => x.TypeId.Equals(typeLanguage.TypeId) && x.Language.Equals(typeLanguage.Language));

        if (typeLanguageDb != null)
            return typeLanguageDb;

        db.TypeLanguages.Add(typeLanguage);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? typeLanguage : null;
    }
}