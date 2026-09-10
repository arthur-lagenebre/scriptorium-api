using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ICardFaceService
{
    Task<CardFace?> AddCardFace(CardFace cardFace);

    Task<IList<CardFace>> GetCardFacesByCardId(Guid cardId);
}