namespace Scriptorium.Mtg.Api.Interfaces;

public interface ITypeService
{
    Task<Scriptorium.Mtg.Models.Typeline.Type?> AddType(Scriptorium.Mtg.Models.Typeline.Type type);
    Task<IList<Scriptorium.Mtg.Models.Typeline.Type>> GetTypes();
}