using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
public class CardSet
{
    public Guid Id { get; init; }
    [ForeignKey("Card")]
    public Guid CardId { get; init; }
    [ForeignKey("Set")]
    public Guid SetId { get; init; }
    [Required, MaxLength(50)]
    public required string CollectorNumber { get; init; }
    [Required, MaxLength(25)]
    public required string Rarity { get; init; }

    public Set Set { get; init; }
    public ICollection<CardSetFace> CardSetFaces { get; init; }
}