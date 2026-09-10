using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Card;

[PrimaryKey("Id")]
public class RelatedCard
{
    public Guid Id { get; init; }
    [ForeignKey("Card")]
    public Guid CardId { get; init; }
    [Required, MaxLength(250)]
    public required string Name { get; init; }
    [Required, MaxLength(50)]
    public required string Component { get; init; }
}