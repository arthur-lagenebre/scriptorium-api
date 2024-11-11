using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

public class SubtypeLanguageService : ISubtypeLanguageService
{
    private readonly MTGDbContext _db;

    public SubtypeLanguageService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<SubtypeLanguage>> GetSubtypeLanguagesByLanguage(string language)
    {
        return await _db.SubtypeLanguages.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<SubtypeLanguage?> AddSubtypeLanguage(SubtypeLanguage subtypeLanguage)
    {
        var subtypeLanguageDb = await _db.SubtypeLanguages.FirstOrDefaultAsync(x => x.SubtypeId.Equals(subtypeLanguage.SubtypeId) && x.Language.Equals(subtypeLanguage.Language));

        if (subtypeLanguageDb != null)
            return subtypeLanguageDb;

        _db.SubtypeLanguages.Add(subtypeLanguage);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? subtypeLanguage : null;
    }
}
