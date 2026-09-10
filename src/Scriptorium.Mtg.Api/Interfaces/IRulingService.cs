using Scriptorium.Mtg.Models;

namespace Scriptorium.Mtg.Api.Interfaces
{
    public interface IRulingService
    {
        Task<Ruling?> AddRuling(Ruling ruling);
        Task<IList<Ruling>> GetRulingsByCardId(Guid cardId);
    }
}