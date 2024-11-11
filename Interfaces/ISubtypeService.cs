using MTG.Database.Models.Typeline;

namespace MTG.Api.Interfaces;

public interface ISubtypeService
{
    Task<Subtype?> AddSubtype(Subtype subtype);
    Task<IList<Subtype>> GetSubtypes();
}