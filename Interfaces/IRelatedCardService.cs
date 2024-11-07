using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface IRelatedCardService
{
    Task<RelatedCard?> AddRelatedCard(RelatedCard relatedCard);
    Task<IList<RelatedCard>> GetRelatedCardsByOracleId(Guid oracleId);
}