using Scriptorium.Mtg.Models;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ISetService
{
    Task<Set?> AddSet(Set set);
    Task<IList<Set>> GetSets();
    Task<Set?> GetSetByCode(string code);
}