using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ICardNameService
{
    Task<CardName?> AddCardName(CardName cardName);

    Task<IList<CardName>> GetCardNamesByCardId(Guid cardId);
}