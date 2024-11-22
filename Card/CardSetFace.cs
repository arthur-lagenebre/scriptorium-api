using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
[Index(nameof(CardSetId), nameof(FaceId))]
public class CardSetFace
{
    public Guid Id { get; init; }
    [ForeignKey("CardSet")]
    public Guid CardSetId { get; init; }
    public int FaceId { get; init; }
    public IList<Guid>? ArtistsId { get; init; }
    [MaxLength(500)]
    public string? FlavorText { get; init; }
    [MaxLength(250)]
    public string? FlavorName { get; init; }
}