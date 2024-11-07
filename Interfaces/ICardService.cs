using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardService
{
    Task<Card?> AddCard(Card card);
    Task<Card?> GetCardByOracleId(Guid oracleId);
}