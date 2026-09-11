using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Contribution;

/// <summary>
/// Un contributeur, identifié par son compte chez un fournisseur OAuth externe.
/// Aucun mot de passe n'est stocké : l'authentification est déléguée.
/// </summary>
[PrimaryKey("Id")]
[Index(nameof(Provider), nameof(ProviderUserId), IsUnique = true)]
public class User
{
    public Guid Id { get; init; }

    /// <summary>Fournisseur OAuth : "google" ou "github".</summary>
    [Required, MaxLength(20)]
    public required string Provider { get; init; }

    /// <summary>Identifiant du compte chez le fournisseur. Immuable et jamais réattribué.</summary>
    [Required, MaxLength(100)]
    public required string ProviderUserId { get; init; }

    [Required, MaxLength(100)]
    public required string DisplayName { get; set; }

    /// <summary>Facultatif : GitHub n'expose pas toujours l'adresse.</summary>
    [MaxLength(320)]
    public string? Email { get; set; }

    [MaxLength(500)]
    public string? AvatarUrl { get; set; }

    /// <summary>"contributor", "moderator" ou "admin".</summary>
    [Required, MaxLength(20)]
    public required string Role { get; set; }

    /// <summary>Bloque toute écriture sans supprimer les contributions passées.</summary>
    public bool IsBlocked { get; set; }

    public DateTime CreatedAt { get; init; }
    public DateTime LastSeenAt { get; set; }
}
