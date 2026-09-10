using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces
{
    public interface ICardTypelineService
    {
        Task<CardTypeline?> AddCardTypeline(CardTypeline cardTypeline);
        Task<IList<CardTypeline>> GetCardTypelinesByCardId(Guid id);
    }
}