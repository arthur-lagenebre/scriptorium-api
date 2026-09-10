using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces
{
    public interface ICardTypelineService
    {
        Task<CardTypeline?> AddCardTypeline(CardTypeline cardTypeline);
        Task<IList<CardTypeline>> GetCardTypelinesByCardId(Guid id);
    }
}