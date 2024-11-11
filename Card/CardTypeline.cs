using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
[Index(nameof(CardId), nameof(Language), nameof(FaceId))]
public class CardTypeline
{
    public Guid Id { get; set; }
    [ForeignKey("Card")]
    public Guid CardId { get; set; }
    [Required]
    public int FaceId { get; set; }
    [Required, MaxLength(3)]
    public string Language { get; set; }
    [Required, MaxLength(500)]
    public string Value { get; set; }
}
