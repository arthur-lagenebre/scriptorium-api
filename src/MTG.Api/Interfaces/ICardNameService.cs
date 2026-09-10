using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardNameService
{
    Task<CardName?> AddCardName(CardName cardName);

    Task<IList<CardName>> GetCardNamesByCardId(Guid cardId);
}