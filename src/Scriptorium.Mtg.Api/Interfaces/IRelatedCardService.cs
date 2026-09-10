using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface IRelatedCardService
{
    Task<RelatedCard?> AddRelatedCard(RelatedCard relatedCard);

    Task<IList<RelatedCard>> GetRelatedCardsByCardId(Guid cardId);
}