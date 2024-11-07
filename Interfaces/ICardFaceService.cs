using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardFaceService
{
    Task<CardFace?> AddCardFace(CardFace cardFace);
    Task<IList<CardFace>> GetCardFacesByOracleId(Guid oracleId);
}