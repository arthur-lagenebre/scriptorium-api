using MTG.Database.Models;

namespace MTG.Api.Interfaces;

public interface ISupertypeService
{
    Task<Supertype?> AddSupertype(Supertype supertype);
    Task<IList<Supertype>> GetSupertypesByLanguage(string language);
}