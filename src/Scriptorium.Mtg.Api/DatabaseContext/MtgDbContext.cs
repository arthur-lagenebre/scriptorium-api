using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Models;
using Scriptorium.Mtg.Models.Card;
using Scriptorium.Mtg.Models.Contribution;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.DatabaseContext;

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
    public DbSet<Models.Typeline.Type> Types { get; init; }
    public DbSet<TypeLanguage> TypeLanguages { get; init; }
    public DbSet<RelatedCard> RelatedCards { get; init; }
    public DbSet<Ruling> Rulings { get; init; }
    public DbSet<Set> Sets { get; init; }
    public DbSet<Subtype> Subtypes { get; init; }
    public DbSet<SubtypeLanguage> SubtypeLanguages { get; init; }
    public DbSet<Supertype> Supertypes { get; init; }
    public DbSet<SupertypeLanguage> SupertypeLanguages { get; init; }
    public DbSet<User> Users { get; set; }
    public DbSet<TranslationRevision> TranslationRevisions { get; set; }
    public DbSet<UserRole> UserRoles { get; set; }

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

        modelBuilder.Entity<Models.Typeline.Type>().HasData(new Models.Typeline.Type { Id = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), DefaultName = "Card" });

		modelBuilder.Entity<TypeLanguage>().HasData(
			new TypeLanguage { Id = Guid.Parse("669367c3-ba1f-4b27-abe8-b0ca40b13d5a"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "en",  Name = "Card" },
			new TypeLanguage { Id = Guid.Parse("bad689b4-49a5-4464-8257-eac72029b0dd"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "es",  Name = "Carta" },
			new TypeLanguage { Id = Guid.Parse("f5a5239c-8d67-4e85-9419-e640a666acbc"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "fr",  Name = "Carte" },
			new TypeLanguage { Id = Guid.Parse("5346476c-2b05-4360-9705-54aa0376ab58"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "de",  Name = "Karte" },
			new TypeLanguage { Id = Guid.Parse("8b2ec9e8-e20e-455b-8b17-a1b03b259290"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "it",  Name = "Carta" },
			new TypeLanguage { Id = Guid.Parse("c070e592-089a-4e4e-b1a8-93ab4c09d984"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "pt",  Name = "Card" },
			new TypeLanguage { Id = Guid.Parse("66dd5abf-cf59-41f0-ae3f-5d52190469ab"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "ja",  Name = "カード" },
			new TypeLanguage { Id = Guid.Parse("5eeb72fe-2186-4954-add5-e610d6dc5ce2"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "ko",  Name = "카드" },
			new TypeLanguage { Id = Guid.Parse("c53a1ccd-5452-4c78-8029-746aa7f44635"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "ru",  Name = "карту" },
			new TypeLanguage { Id = Guid.Parse("a6999ee9-7fa1-4d05-87fe-020859e07fb7"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "zhs", Name = "牌" },
			new TypeLanguage { Id = Guid.Parse("4284fd77-bfa0-44c1-9941-5cfd4f2c0b74"), TypeId = Guid.Parse("18943286-deb5-4d81-b089-6cc4bc2b6937"), Language = "zht", Name = "牌" }
		);

        modelBuilder.Entity<TranslationRevision>()
                    .Property(x => x.TargetType)
                    .HasConversion<string>()
                    .HasMaxLength(30);

        modelBuilder.Entity<TranslationRevision>()
                    .Property(x => x.Status)
                    .HasConversion<string>()
                    .HasMaxLength(20);
    }
}