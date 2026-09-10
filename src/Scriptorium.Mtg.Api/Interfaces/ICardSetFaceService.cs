using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ICardSetFaceService
{
    Task<CardSetFace?> AddCardSetFace(CardSetFace cardSetFace);

    Task<IList<CardSetFace>> GetCardSetFacesByCardSetId(Guid cardSetId);
}