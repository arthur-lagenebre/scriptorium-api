using Microsoft.EntityFrameworkCore;
using MTG.Database.Models;
using MTG.Database.Models.Card;

namespace MTG.Api.DatabaseContext;

public class MTGDbContext : DbContext
{
    public DbSet<Artist> Artists { get; set; }
    public DbSet<Card> Cards { get; set; }
    public DbSet<CardFace> CardFaces { get; set; }
    public DbSet<CardName> CardNames { get; set; }
    public DbSet<CardSet> CardSets { get; set; }
    public DbSet<CardSetFace> CardSetFaces { get; set; }
    public DbSet<CardSubtype> CardSubtypes { get; set; }
    public DbSet<CardSupertype> CardSupertypes { get; set; }
    public DbSet<CardText> CardTexts { get; set; }
    public DbSet<CardType> CardTypes { get; set; }
    public DbSet<Color> Colors { get; set; }
    public DbSet<Database.Models.Type> Types { get; set; }
    public DbSet<RelatedCard> RelatedCards { get; set; }
    public DbSet<Set> Sets { get; set; }
    public DbSet<Subtype> Subtypes { get; set; }
    public DbSet<Supertype> Supertypes { get; set; }

    public MTGDbContext(DbContextOptions<MTGDbContext> options) : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Color>().HasData(
            new Color { Id = 1, Name = "None", Description = "No color" },
            new Color { Id = 2, Name = "W", Description = "White" },
            new Color { Id = 4, Name = "U", Description = "Blue" },
            new Color { Id = 8, Name = "B", Description = "Black" },
            new Color { Id = 16, Name = "R", Description = "Red" },
            new Color { Id = 32, Name = "G", Description = "Green" }
        );
    }
}