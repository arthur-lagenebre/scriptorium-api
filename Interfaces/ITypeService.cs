using MTG.Database.Models;

namespace MTG.Api.Interfaces;

public interface ITypeService
{
    Task<Database.Models.Type?> AddType(Database.Models.Type type);
    Task<IList<Database.Models.Type>> GetTypesByLanguage(string language);
}