using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Services;

public class SupertypeLanguageService(MtgDbContext db) : ISupertypeLanguageService
{
    public async Task<IList<SupertypeLanguage>> GetSupertypeLanguagesByLanguage(string language)
    {
        return await db.SupertypeLanguages.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<SupertypeLanguage?> AddSupertype(SupertypeLanguage supertypeLanguage)
    {
        var supertypeLanguageDb = await db.SupertypeLanguages.FirstOrDefaultAsync(x => x.SupertypeId.Equals(supertypeLanguage.SupertypeId) && x.Language.Equals(supertypeLanguage.Language));

        if (supertypeLanguageDb != null)
            return supertypeLanguageDb;

        db.SupertypeLanguages.Add(supertypeLanguage);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? supertypeLanguage : null;
    }
}
