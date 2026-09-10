using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Card;

[PrimaryKey("Id")]
public class CardSetFace
{
    public Guid Id { get; init; }
    [ForeignKey("CardSet")]
    public Guid CardSetId { get; init; }
    public int FaceId { get; init; }
    public IList<Guid>? ArtistsId { get; init; }

    public ICollection<CardSetFaceFlavor> Flavors { get; init; }
}