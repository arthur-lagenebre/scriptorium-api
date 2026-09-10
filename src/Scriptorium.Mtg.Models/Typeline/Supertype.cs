using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Typeline;

[PrimaryKey("Id")]
public class Supertype
{
    public Guid Id { get; init; }
    [Required, MaxLength(150)]
    public required string DefaultName { get; init; }
}
