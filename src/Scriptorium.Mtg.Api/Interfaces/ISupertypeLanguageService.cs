using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Interfaces
{
    public interface ISupertypeLanguageService
    {
        Task<SupertypeLanguage?> AddSupertype(SupertypeLanguage supertypeLanguage);
        Task<IList<SupertypeLanguage>> GetSupertypeLanguagesByLanguage(string language);
    }
}