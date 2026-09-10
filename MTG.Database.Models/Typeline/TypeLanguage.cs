using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Typeline;

[PrimaryKey("Id")]
public class TypeLanguage
{
    public Guid Id { get; init; }
    [ForeignKey("Type")]
    public Guid TypeId { get; init; }
    [Required, MaxLength(3)]
    public required string Language { get; init; }
    [Required, MaxLength(150)]
    public required string Name { get; init; }
}
