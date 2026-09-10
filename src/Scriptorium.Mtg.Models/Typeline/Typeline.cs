using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Typeline;

[PrimaryKey("Id")]
public class Typeline
{
    public Guid Id { get; init; }
    [Required, MaxLength(3)]
    public required string Language { get; init; }
    [Required, MaxLength(10)]
    public required string SeparatorTypeSubtype { get; init; }
    [Required, MaxLength(10)]
    public required string SeparatorSubtype { get; init; }
    [Required, MaxLength(10)]
    public required string SeparatorType { get; init; }
}
