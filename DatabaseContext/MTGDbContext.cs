using Microsoft.EntityFrameworkCore;
using MTG.Database.Models;
using MTG.Database.Models.Card;
using MTG.Database.Models.Typeline;

namespace MTG.Api.DatabaseContext;

public class MtgDbContext(DbContextOptions<MtgDbContext> options) : DbContext(options)
{
    public DbSet<Artist> Artists { get; init; }
    public DbSet<Card> Cards { get; init; }
    public DbSet<CardFace> CardFaces { get; init; }
    public DbSet<CardName> CardNames { get; init; }
    public DbSet<CardSet> CardSets { get; init; }
    public DbSet<CardSetFace> CardSetFaces { get; init; }
    public DbSet<CardTypeline> CardTypelines { get; init; }
    public DbSet<CardText> CardTexts { get; init; }
    public DbSet<Color> Colors { get; init; }
    public DbSet<Database.Models.Typeline.Type> Types { get; init; }
    public DbSet<TypeLanguage> TypeLanguages { get; init; }
    public DbSet<RelatedCard> RelatedCards { get; init; }
    public DbSet<Ruling> Rulings { get; init; }
    public DbSet<Set> Sets { get; init; }
    public DbSet<Subtype> Subtypes { get; init; }
    public DbSet<SubtypeLanguage> SubtypeLanguages { get; init; }
    public DbSet<Supertype> Supertypes { get; init; }
    public DbSet<SupertypeLanguage> SupertypeLanguages { get; init; }

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