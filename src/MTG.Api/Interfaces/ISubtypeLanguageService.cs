using MTG.Database.Models.Typeline;

namespace MTG.Api.Interfaces
{
    public interface ISubtypeLanguageService
    {
        Task<SubtypeLanguage?> AddSubtypeLanguage(SubtypeLanguage subtypeLanguage);
        Task<IList<SubtypeLanguage>> GetSubtypeLanguagesByLanguage(string language);
    }
}