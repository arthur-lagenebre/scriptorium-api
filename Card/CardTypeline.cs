using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
[Index(nameof(CardId), nameof(Language), nameof(FaceId))]
public class CardTypeline
{
    public Guid Id { get; init; }
    [ForeignKey("Card")]
    public Guid CardId { get; init; }
    [Required]
    public int FaceId { get; init; }
    [Required, MaxLength(3)]
    public required string Language { get; init; }
    [Required, MaxLength(500)]
    public required string Value { get; init; }
}
