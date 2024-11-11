namespace MTG.Api.Interfaces;

public interface ITypeService
{
    Task<Database.Models.Typeline.Type?> AddType(Database.Models.Typeline.Type type);
    Task<IList<Database.Models.Typeline.Type>> GetTypes();
}