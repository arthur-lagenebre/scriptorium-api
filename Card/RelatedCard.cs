using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
[Index(nameof(CardId))]
public class RelatedCard
{
    public Guid Id { get; set; }
    [ForeignKey("Card")]
    public Guid CardId { get; set; }
    [Required, MaxLength(250)]
    public string Name { get; set; }
    public string Component { get; set; }
}