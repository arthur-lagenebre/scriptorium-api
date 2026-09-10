using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Card;

[PrimaryKey("Id")]
public class Card
{
    public Guid Id { get; set; }
    [Required, MaxLength(250)]
    public required string ManaCost { get; set; }
    public double ManaValue { get; set; }
    public int Colors { get; set; }
    public int ColorsIdentity { get; set; }
    public int ColorsIndicator { get; set; }
    [Required, MaxLength(200)]
    public required string Layout { get; set; }
    public required List<string> Keyword { get; set; }
    [Required, MaxLength(100)]
    public required List<string> ProducedMana { get; set; }
    [Required, MaxLength(10)]
    public required string Power { get; set; }
    [Required, MaxLength(10)]
    public required string Toughness { get; set; }
    [Required, MaxLength(10)]
    public required string Loyalty { get; set; }
    [Required, MaxLength(10)]
    public required string HandModifier { get; set; }
    [Required, MaxLength(10)]
    public required string LifeModifier { get; set; }

    public required ICollection<CardName> CardNames { get; set; }
    public required ICollection<CardText> CardTexts { get; set; }
    public required ICollection<CardFace> CardFaces { get; set; }
    public required ICollection<CardSet> CardSets { get; set; }
    public required ICollection<CardTypeline> CardTypelines { get; set; }
    public required ICollection<RelatedCard> RelatedCards { get; set; }
    public required ICollection<Ruling> Rulings { get; set; }
}