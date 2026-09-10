using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Interfaces
{
    public interface ITypeLanguageService
    {
        Task<TypeLanguage?> AddType(TypeLanguage typeLanguage);
        Task<IList<TypeLanguage>> GetTypeLanguagesByLanguage(string language);
    }
}