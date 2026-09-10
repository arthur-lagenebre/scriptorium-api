using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models;

[PrimaryKey("Id")]
public class Artist
{
    public Guid Id { get; init; }
    [Required, MaxLength(250)]
    public required string Name { get; init; }
}
