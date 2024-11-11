using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Typeline;

[PrimaryKey("Id")]
public class Supertype
{
    public Guid Id { get; set; }
    [Required, MaxLength(150)]
    public string DefaultName { get; set; }
}
