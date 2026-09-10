using MTG.Database.Models.Typeline;

namespace MTG.Api.Interfaces
{
    public interface ITypeLanguageService
    {
        Task<TypeLanguage?> AddType(TypeLanguage typeLanguage);
        Task<IList<TypeLanguage>> GetTypeLanguagesByLanguage(string language);
    }
}