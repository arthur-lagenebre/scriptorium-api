using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardSupertypeService
{
    Task<CardSupertype?> AddCardSupertype(CardSupertype cardSupertype);
    Task<CardSupertype?> GetCardSupertypeByOracleId(Guid oracleId);
}