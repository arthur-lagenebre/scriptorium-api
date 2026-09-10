using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ISupertypeService
{
    Task<Supertype?> AddSupertype(Supertype supertype);
    Task<IList<Supertype>> GetSupertypes();
}