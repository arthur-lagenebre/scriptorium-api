using MTG.Database.Models.Typeline;

namespace MTG.Api.Interfaces;

public interface ISupertypeService
{
    Task<Supertype?> AddSupertype(Supertype supertype);
    Task<IList<Supertype>> GetSupertypes();
}