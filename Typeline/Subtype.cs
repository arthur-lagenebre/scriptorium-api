using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Typeline;

[PrimaryKey("Id")]
public class Subtype
{
    public Guid Id { get; init; }
    [Required, StringLength(50)]
    public required string TypeCard { get; init; }
    [Required, MaxLength(150)]
    public required string DefaultName { get; init; }
}
