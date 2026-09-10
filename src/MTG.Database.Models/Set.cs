using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models;

[PrimaryKey("Id")]
public class Set
{
    public Guid Id { get; init; }
    [Required, MaxLength(6)]
    public required string Code { get; init; }
    [Required, MaxLength(150)]
    public required string Name { get; init; }
    [Required, MaxLength(50)]
    public required string Type { get; init; }
    public DateTime ReleasedAt { get; init; }
    [MaxLength(6)]
    public string? BlockCode { get; init; }
    [MaxLength(150)]
    public string? Block { get; init; }
    [MaxLength(6)]
    public string? ParentSetCode { get; init; }
}
