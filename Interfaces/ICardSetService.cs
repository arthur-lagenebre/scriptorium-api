using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardSetService
{
    Task<CardSet?> AddCardSet(CardSet cardSet);

    Task<IList<CardSet>> GetCardSetsByCardId(Guid cardId);
}