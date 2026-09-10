using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ISubtypeService
{
    Task<Subtype?> AddSubtype(Subtype subtype);
    Task<IList<Subtype>> GetSubtypes();
}