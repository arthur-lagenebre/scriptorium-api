using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models;

[PrimaryKey("Id")]
public class Color
{
    public int Id { get; init; }
    [Required, MaxLength(50)]
    public required string Name { get; init; }
    [Required, MaxLength(100)]
    public required string Description { get; init; }
}
