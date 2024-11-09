using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardTypeService
{
    Task<CardType?> AddCardType(CardType cardType);

    Task<CardType?> GetCardTypeByCardId(Guid cardId);
}