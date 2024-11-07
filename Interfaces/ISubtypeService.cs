using MTG.Database.Models;

namespace MTG.Api.Interfaces;

public interface ISubtypeService
{
    Task<Subtype?> AddSubtype(Subtype subtype);
    Task<IList<Subtype>> GetSubtypesByLanguage(string language);
}