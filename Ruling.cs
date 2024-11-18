using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MTG.Database.Models;

[PrimaryKey("Id")]
public class Ruling
{
    public Guid Id { get; set; }
    [ForeignKey("Card")]
    public Guid CardId { get; set; }
    [Required, MaxLength(3)]
    public string Language { get; set; }
    [Required]
    public string Rule { get; set; }
    public DateTime PublishedAt { get; set; }
}
