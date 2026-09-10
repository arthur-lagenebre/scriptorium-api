using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ICardSetService
{
    Task<CardSet?> AddCardSet(CardSet cardSet);

    Task<IList<CardSet>> GetCardSetsByCardId(Guid cardId);
}