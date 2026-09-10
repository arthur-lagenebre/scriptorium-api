using MTG.Database.Models.Typeline;

namespace MTG.Api.Interfaces
{
    public interface ISupertypeLanguageService
    {
        Task<SupertypeLanguage?> AddSupertype(SupertypeLanguage supertypeLanguage);
        Task<IList<SupertypeLanguage>> GetSupertypeLanguagesByLanguage(string language);
    }
}