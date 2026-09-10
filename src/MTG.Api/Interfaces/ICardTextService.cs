using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardTextService
{
    Task<CardText?> AddCardText(CardText cardText);

    Task<IList<CardText>> GetCardTextsByCardId(Guid cardId);
}