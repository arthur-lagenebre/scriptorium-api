namespace Scriptorium.Mtg.Api.Translations;

/// <summary>Valeurs traduites d'une face, telles que saisies par le contributeur.</summary>
public record TranslationFaceInput(int FaceId, string? Name, string? Text, string? Typeline);

/// <summary>
/// Traduction complète d'une carte dans une langue. C'est l'unité que le
/// traducteur manipule à l'écran : toutes les faces d'un coup.
/// </summary>
public record TranslationUpsertRequest(List<TranslationFaceInput> Faces, string? Comment);

public record TranslationFaceView(int FaceId, string? Name, string? Text, string? Typeline);

public record TranslationView(Guid CardId, string Language, List<TranslationFaceView> Faces);

public record RevisionView(
    Guid Id,
    string TargetType,
    int FaceId,
    string Language,
    string? PreviousValue,
    string? NewValue,
    string? Comment,
    string Status,
    DateTime CreatedAt,
    Guid UserId,
    string UserDisplayName);

public enum EditOutcome
{
    Success,
    NoChange,
    CardNotFound,
    LanguageNotEditable,
    UserBlocked,
    RevisionNotFound
}

public record EditResult(EditOutcome Outcome, int RevisionCount = 0, string? Message = null);
