using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace Scriptorium.Mtg.Models.Contribution;

/// <summary>Table de traduction concernée par une révision.</summary>
public enum RevisionTarget
{
    CardName,
    CardText,
    CardTypeline,
    CardSetFaceFlavor
}

/// <summary>
/// État d'une révision. Aujourd'hui seuls Applied et Reverted sont produits :
/// le modèle est l'édition directe. Pending et Rejected existent pour permettre
/// d'ajouter une étape de relecture plus tard sans changer le schéma.
/// </summary>
public enum RevisionStatus
{
    Applied,
    Pending,
    Rejected,
    Reverted
}

/// <summary>
/// Une modification d'une valeur traduite. Immuable : corriger une traduction
/// crée une nouvelle révision, elle n'en modifie aucune.
/// </summary>
[PrimaryKey("Id")]
[Index(nameof(TargetType), nameof(CardId), nameof(FaceId), nameof(Language), nameof(CreatedAt))]
[Index(nameof(CardId), nameof(Language), nameof(CreatedAt))]
[Index(nameof(UserId), nameof(CreatedAt))]
public class TranslationRevision
{
    public Guid Id { get; init; }

    public RevisionTarget TargetType { get; init; }

    /// <summary>Identifiant de la ligne modifiée. Null si la révision l'a créée.</summary>
    public Guid? CardSetFaceId { get; init; }

    /// <summary>Dupliqué ici pour interroger l'historique d'une carte sans jointure.</summary>
    public Guid CardId { get; init; }

    public int FaceId { get; init; }

    [Required, MaxLength(3)]
    public required string Language { get; init; }

    /// <summary>Valeur avant modification. Null si la révision a créé la ligne.</summary>
    [MaxLength(2500)]
    public string? PreviousValue { get; init; }

    /// <summary>Valeur après modification. Null si la révision a supprimé la ligne.</summary>
    [MaxLength(2500)]
    public string? NewValue { get; init; }

    /// <summary>Note facultative du contributeur expliquant son changement.</summary>
    [MaxLength(500)]
    public string? Comment { get; init; }

    [ForeignKey("User")]
    public Guid UserId { get; init; }

    public DateTime CreatedAt { get; init; }

    public RevisionStatus Status { get; set; }

    // Inutilisés tant que le modèle reste l'édition directe.
    [ForeignKey("ReviewedByUser")]
    public Guid? ReviewedByUserId { get; set; }
    public DateTime? ReviewedAt { get; set; }

    public User? User { get; init; }
}
