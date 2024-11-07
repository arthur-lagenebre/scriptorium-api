using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardSubtypeService
{
    Task<CardSubtype?> AddCardSubtype(CardSubtype cardSubtype);
    Task<IList<CardSubtype>> GetCardSubtypesByOracleId(Guid oracleId);
}