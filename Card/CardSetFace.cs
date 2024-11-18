using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
[Index(nameof(CardSetId), nameof(FaceId))]
public class CardSetFace
{
    public Guid Id { get; set; }
    [ForeignKey("CardSet")]
    public Guid CardSetId { get; set; }
    public int FaceId { get; set; }
    public IList<Guid>? ArtistsId { get; set; }
    public string FlavorText { get; set; }
    [MaxLength(250)]
    public string FlavorName { get; set; }
}