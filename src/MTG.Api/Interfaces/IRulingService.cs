using MTG.Database.Models;

namespace MTG.Api.Interfaces
{
    public interface IRulingService
    {
        Task<Ruling?> AddRuling(Ruling ruling);
        Task<IList<Ruling>> GetRulingsByCardId(Guid cardId);
    }
}