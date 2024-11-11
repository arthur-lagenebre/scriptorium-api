using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Typeline;

[PrimaryKey("Id")]
public class SubtypeLanguage
{
    public Guid Id { get; set; }
    [ForeignKey("Subtype")]
    public Guid SubtypeId { get; set; }
    [Required, MaxLength(3)]
    public string Language { get; set; }
    [Required, MaxLength(150)]
    public string Name { get; set; }

    public Subtype Subtype { get; set; }
}
