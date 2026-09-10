using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

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
