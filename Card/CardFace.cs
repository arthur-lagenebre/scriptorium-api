using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
[Index(nameof(CardId), nameof(FaceId))]
public class CardFace
{
    public Guid Id { get; set; }
    [ForeignKey("Card")]
    public Guid CardId { get; set; }
    public int FaceId { get; set; }
    [Required, MaxLength(250)]
    public string ManaCost { get; set; }
    public double ManaValue { get; set; }
    public int Colors { get; set; }
    public int ColorsIndicator { get; set; }
    [Required, MaxLength(10)]
    public string Power { get; set; }
    [Required, MaxLength(10)]
    public string Toughness { get; set; }
    [Required, MaxLength(10)]
    public string Loyalty { get; set; }
    public int? Defense { get; set; }
}