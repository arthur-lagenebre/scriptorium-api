using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace MTG.Database.Models.Card;

[PrimaryKey("Id")]
public class Card
{
    public Guid Id { get; set; }
    [Required, MaxLength(250)]
    public string ManaCost { get; set; }
    public double ManaValue { get; set; }
    public int Colors { get; set; }
    public int ColorsIdentity { get; set; }
    public int ColorsIndicator { get; set; }
    [Required, MaxLength(200)]
    public string Layout { get; set; }
    public List<string> Keyword { get; set; }
    [Required, MaxLength(100)]
    public List<string> ProducedMana { get; set; }
    [Required, MaxLength(10)]
    public string Power { get; set; }
    [Required, MaxLength(10)]
    public string Toughness { get; set; }
    [Required, MaxLength(10)]
    public string Loyalty { get; set; }
    [Required, MaxLength(10)]
    public string HandModifier { get; set; }
    [Required, MaxLength(10)]
    public string LifeModifier { get; set; }

    public ICollection<CardName> CardNames { get; set; }
    public ICollection<CardText> CardTexts { get; set; }
    public ICollection<CardFace> CardFaces { get; set; }
    public ICollection<CardSet> CardSets { get; set; }
    public ICollection<CardTypeline> CardTypelines { get; set; }
    public ICollection<RelatedCard> RelatedCards { get; set; }
}