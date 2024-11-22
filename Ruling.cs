using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models;

[PrimaryKey("Id")]
public class Ruling
{
    public Guid Id { get; init; }
    [ForeignKey("Card")]
    public Guid CardId { get; init; }
    [Required, MaxLength(3)]
    public required string Language { get; init; }
    [Required, MaxLength(2500)]
    public required string Rule { get; init; }
    public DateTime PublishedAt { get; init; }
}
