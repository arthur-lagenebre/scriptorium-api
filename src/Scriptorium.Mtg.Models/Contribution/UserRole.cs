using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Contribution;

/// <summary>
/// Attribution d'un rôle à un utilisateur, éventuellement limitée à une langue.
/// L'absence de ligne signifie « contributeur simple » : tout compte authentifié
/// peut éditer, seuls les rôles élevés sont enregistrés ici.
/// </summary>
[PrimaryKey("Id")]
[Index(nameof(UserId), nameof(Role), nameof(Language), IsUnique = true)]
public class UserRole
{
    public Guid Id { get; init; }

    [ForeignKey("User")]
    public Guid UserId { get; init; }

    /// <summary>"moderator" ou "admin".</summary>
    [Required, MaxLength(20)]
    public required string Role { get; init; }

    /// <summary>
    /// Langue sur laquelle porte le rôle, ou null pour une portée globale.
    /// Un modérateur « fr » ne modère que les traductions françaises.
    /// </summary>
    [MaxLength(3)]
    public string? Language { get; init; }

    public DateTime GrantedAt { get; init; }

    /// <summary>Qui a attribué ce rôle. Null pour l'administrateur initial.</summary>
    public Guid? GrantedByUserId { get; init; }

    public User? User { get; init; }
}
