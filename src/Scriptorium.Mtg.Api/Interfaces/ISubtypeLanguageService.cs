using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Interfaces
{
    public interface ISubtypeLanguageService
    {
        Task<SubtypeLanguage?> AddSubtypeLanguage(SubtypeLanguage subtypeLanguage);
        Task<IList<SubtypeLanguage>> GetSubtypeLanguagesByLanguage(string language);
    }
}