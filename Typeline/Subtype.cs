using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Typeline;

[PrimaryKey("Id")]
public class Subtype
{
    public Guid Id { get; set; }
    [Required, StringLength(50)]
    public string TypeCard { get; set; }
    [Required, MaxLength(150)]
    public string DefaultName { get; set; }
}
