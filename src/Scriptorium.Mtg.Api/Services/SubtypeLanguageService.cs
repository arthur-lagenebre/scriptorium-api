using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Services;

public class SubtypeLanguageService(MtgDbContext db) : ISubtypeLanguageService
{
    public async Task<IList<SubtypeLanguage>> GetSubtypeLanguagesByLanguage(string language)
    {
        return await db.SubtypeLanguages.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<SubtypeLanguage?> AddSubtypeLanguage(SubtypeLanguage subtypeLanguage)
    {
        var subtypeLanguageDb = await db.SubtypeLanguages.FirstOrDefaultAsync(x => x.SubtypeId.Equals(subtypeLanguage.SubtypeId) && x.Language.Equals(subtypeLanguage.Language));

        if (subtypeLanguageDb != null)
            return subtypeLanguageDb;

        db.SubtypeLanguages.Add(subtypeLanguage);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? subtypeLanguage : null;
    }
}
