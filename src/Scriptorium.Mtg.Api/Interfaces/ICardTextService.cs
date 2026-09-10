using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ICardTextService
{
    Task<CardText?> AddCardText(CardText cardText);

    Task<IList<CardText>> GetCardTextsByCardId(Guid cardId);
}