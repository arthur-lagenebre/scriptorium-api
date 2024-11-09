using MTG.Database.Models.Card;

namespace MTG.Api.Interfaces;

public interface ICardSetFaceService
{
    Task<CardSetFace?> AddCardSetFace(CardSetFace cardSetFace);

    Task<IList<CardSetFace>> GetCardSetFacesByCardSetId(Guid cardSetId);
}