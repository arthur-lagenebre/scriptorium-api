using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Typeline;

[PrimaryKey("Id")]
public class Typeline
{
    public Guid Id { get; set; }
    [Required, MaxLength(3)]
    public string Language { get; set; }
    [Required, MaxLength(10)]
    public string SeparatorTypeSubtype { get; set; }
    [Required, MaxLength(10)]
    public string SeparatorSubtype { get; set; }
    [Required, MaxLength(10)]
    public string SeparatorType { get; set; }
}
