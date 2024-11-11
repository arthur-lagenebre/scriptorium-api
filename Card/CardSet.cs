using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
public class CardSet
{
    public Guid Id { get; set; }
    [ForeignKey("Card")]
    public Guid CardId { get; set; }
    [ForeignKey("Set")]
    public Guid SetId { get; set; }
    [Required, MaxLength(50)]
    public string CollectorNumber { get; set; }
    [Required, MaxLength(25)]
    public string Rarity { get; set; }

    public Set Set { get; set; }
    public ICollection<CardSetFace> CardSetFaces { get; set; }
}