using Microsoft.EntityFrameworkCore;
using MTG.Database.Models;
using MTG.Database.Models.Card;
using MTG.Database.Models.Typeline;

namespace MTG.Api.DatabaseContext;

public class MTGDbContext : DbContext
{
    public DbSet<Artist> Artists { get; set; }
    public DbSet<Card> Cards { get; set; }
    public DbSet<CardFace> CardFaces { get; set; }
    public DbSet<CardName> CardNames { get; set; }
    public DbSet<CardSet> CardSets { get; set; }
    public DbSet<CardSetFace> CardSetFaces { get; set; }
    public DbSet<CardTypeline> CardTypelines { get; set; }
    public DbSet<CardText> CardTexts { get; set; }
    public DbSet<Color> Colors { get; set; }
    public DbSet<Database.Models.Typeline.Type> Types { get; set; }
    public DbSet<TypeLanguage> TypeLanguages { get; set; }
    public DbSet<RelatedCard> RelatedCards { get; set; }
    public DbSet<Ruling> Rulings { get; set; }
    public DbSet<Set> Sets { get; set; }
    public DbSet<Subtype> Subtypes { get; set; }
    public DbSet<SubtypeLanguage> SubtypeLanguages { get; set; }
    public DbSet<Supertype> Supertypes { get; set; }
    public DbSet<SupertypeLanguage> SupertypeLanguages { get; set; }

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

        modelBuilder.Entity<Database.Models.Typeline.Type>().HasData(
            new Database.Models.Typeline.Type { Id = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), DefaultName = "Card" }
        );

        modelBuilder.Entity<TypeLanguage>().HasData(
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "en", Name = "Card" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "es", Name = "Carta" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "fr", Name = "Carte" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "de", Name = "Karte" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "it", Name = "Carta" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "pt", Name = "Card" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "ja", Name = "カード" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "ko", Name = "카드" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "ru", Name = "карту" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "zhs", Name = "牌" },
            new TypeLanguage { Id = Guid.NewGuid(), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "zht", Name = "牌" }
        );
    }
}