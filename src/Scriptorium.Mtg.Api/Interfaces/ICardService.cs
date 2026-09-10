using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ICardService
{
    Task<Card?> AddCard(Card card);

    Task<Card?> GetCardById(Guid cardId);
}