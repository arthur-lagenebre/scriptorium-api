using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Services;

public class SupertypeLanguageService : ISupertypeLanguageService
{
    private readonly MTGDbContext _db;

    public SupertypeLanguageService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<SupertypeLanguage>> GetSupertypeLanguagesByLanguage(string language)
    {
        return await _db.SupertypeLanguages.Where(x => x.Language.Equals(language)).ToListAsync();
    }

    public async Task<SupertypeLanguage?> AddSupertype(SupertypeLanguage supertypeLanguage)
    {
        var supertypeLanguageDb = await _db.SupertypeLanguages.FirstOrDefaultAsync(x => x.SupertypeId.Equals(supertypeLanguage.SupertypeId) && x.Language.Equals(supertypeLanguage.Language));

        if (supertypeLanguageDb != null)
            return supertypeLanguageDb;

        _db.SupertypeLanguages.Add(supertypeLanguage);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? supertypeLanguage : null;
    }
}
