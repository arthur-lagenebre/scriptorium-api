using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
public class CardFace
{
    public Guid Id { get; init; }
    [ForeignKey("Card")]
    public Guid CardId { get; init; }
    public int FaceId { get; init; }
    [Required, MaxLength(250)]
    public required string ManaCost { get; init; }
    public double ManaValue { get; init; }
    public int Colors { get; init; }
    public int ColorsIndicator { get; init; }
    [Required, MaxLength(10)]
    public required string Power { get; init; }
    [Required, MaxLength(10)]
    public required string Toughness { get; init; }
    [Required, MaxLength(10)]
    public required string Loyalty { get; init; }
    public int? Defense { get; init; }
}