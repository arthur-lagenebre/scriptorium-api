using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models;

[PrimaryKey("Id")]
public class Artist
{
    public Guid Id { get; set; }
    [Required]
    public string Name { get; set; }
}
