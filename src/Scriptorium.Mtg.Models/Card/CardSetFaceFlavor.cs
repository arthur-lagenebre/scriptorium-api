using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Card;

[PrimaryKey("Id")]
public class CardSetFaceFlavor
{
    public Guid Id { get; init; }
    [ForeignKey("CardSetFace")]
    public Guid CardSetFaceId { get; init; }
    [Required, MaxLength(3)]
    public required string Language { get; init; }
    [MaxLength(500)]
    public string? FlavorText { get; init; }
    [MaxLength(250)]
    public string? FlavorName { get; init; }
}
