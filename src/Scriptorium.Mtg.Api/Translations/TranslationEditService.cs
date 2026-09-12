using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Models.Card;
using Scriptorium.Mtg.Models.Contribution;

namespace Scriptorium.Mtg.Api.Translations;

public interface ITranslationEditService
{
    Task<TranslationView?> GetAsync(Guid cardId, string language, CancellationToken ct = default);
    Task<EditResult> UpsertAsync(Guid cardId, string language, TranslationUpsertRequest request, Guid userId, CancellationToken ct = default);
    Task<IReadOnlyList<RevisionView>> GetHistoryAsync(Guid cardId, string? language, int take, CancellationToken ct = default);
    Task<EditResult> RevertAsync(Guid cardId, Guid revisionId, Guid userId, CancellationToken ct = default);
}

public class TranslationEditService(MtgDbContext db) : ITranslationEditService
{
    /// <summary>
    /// L'anglais est le texte officiel de Wizards, réécrit à chaque import :
    /// toute correction communautaire y serait perdue.
    /// </summary>
    private const string OfficialLanguage = "en";

    public async Task<TranslationView?> GetAsync(Guid cardId, string language, CancellationToken ct = default)
    {
        if (!await db.Cards.AnyAsync(c => c.Id == cardId, ct))
            return null;

        var names = await db.CardNames.Where(x => x.CardId == cardId && x.Language == language).ToListAsync(ct);
        var texts = await db.CardTexts.Where(x => x.CardId == cardId && x.Language == language).ToListAsync(ct);
        var typelines = await db.CardTypelines.Where(x => x.CardId == cardId && x.Language == language).ToListAsync(ct);

        var faceIds = names.Select(x => x.FaceId)
            .Union(texts.Select(x => x.FaceId))
            .Union(typelines.Select(x => x.FaceId))
            .OrderBy(x => x)
            .ToList();

        var faces = faceIds.Select(faceId => new TranslationFaceView(
            faceId,
            names.FirstOrDefault(x => x.FaceId == faceId)?.Value,
            texts.FirstOrDefault(x => x.FaceId == faceId)?.Value,
            typelines.FirstOrDefault(x => x.FaceId == faceId)?.Value)).ToList();

        return new TranslationView(cardId, language, faces);
    }

    public async Task<EditResult> UpsertAsync(Guid cardId, string language, TranslationUpsertRequest request, Guid userId, CancellationToken ct = default)
    {
        if (string.Equals(language, OfficialLanguage, StringComparison.OrdinalIgnoreCase))
            return new EditResult(EditOutcome.LanguageNotEditable,
                Message: "Le texte anglais est celui de l'éditeur et n'est pas modifiable.");

        var user = await db.Users.SingleOrDefaultAsync(u => u.Id == userId, ct);
        if (user is null || user.IsBlocked)
            return new EditResult(EditOutcome.UserBlocked);

        if (!await db.Cards.AnyAsync(c => c.Id == cardId, ct))
            return new EditResult(EditOutcome.CardNotFound);

        var revisions = new List<TranslationRevision>();

        foreach (var face in request.Faces)
        {
            await ApplyAsync(db.CardNames, RevisionTarget.CardName, face.Name,
                () => new CardName { Id = Guid.NewGuid(), CardId = cardId, FaceId = face.FaceId, Language = language, Value = face.Name! },
                cardId, face.FaceId, language, userId, request.Comment, revisions, ct);

            await ApplyAsync(db.CardTexts, RevisionTarget.CardText, face.Text,
                () => new CardText { Id = Guid.NewGuid(), CardId = cardId, FaceId = face.FaceId, Language = language, Value = face.Text! },
                cardId, face.FaceId, language, userId, request.Comment, revisions, ct);

            await ApplyAsync(db.CardTypelines, RevisionTarget.CardTypeline, face.Typeline,
                () => new CardTypeline { Id = Guid.NewGuid(), CardId = cardId, FaceId = face.FaceId, Language = language, Value = face.Typeline! },
                cardId, face.FaceId, language, userId, request.Comment, revisions, ct);
        }

        if (revisions.Count == 0)
            return new EditResult(EditOutcome.NoChange);

        db.TranslationRevisions.AddRange(revisions);
        await db.SaveChangesAsync(ct);

        return new EditResult(EditOutcome.Success, revisions.Count);
    }

    /// <summary>
    /// Compare la valeur soumise à celle en base, et n'écrit que si elle diffère.
    /// Une valeur nulle signifie « non renseigné » et laisse la ligne intacte :
    /// un formulaire partiellement rempli n'efface rien.
    /// </summary>
    private async Task ApplyAsync<T>(
        DbSet<T> set,
        RevisionTarget target,
        string? submitted,
        Func<T> factory,
        Guid cardId,
        int faceId,
        string language,
        Guid userId,
        string? comment,
        List<TranslationRevision> revisions,
        CancellationToken ct) where T : class, ITranslatedValue
    {
        if (submitted is null)
            return;

        submitted = submitted.Trim();

        var existing = await set.SingleOrDefaultAsync(x => EF.Property<Guid>(x, "CardId") == cardId && x.FaceId == faceId && x.Language == language, ct);

        if (existing is not null && existing.Value == submitted)
            return;

        var previous = existing?.Value;

        if (existing is null)
        {
            if (submitted.Length == 0)
                return;

            set.Add(factory());
        }
        else
        {
            existing.Value = submitted;
            existing.UpdatedAt = DateTime.UtcNow;
            existing.UpdatedByUserId = userId;
        }

        revisions.Add(new TranslationRevision
        {
            Id = Guid.NewGuid(),
            TargetType = target,
            CardId = cardId,
            FaceId = faceId,
            Language = language,
            PreviousValue = previous,
            NewValue = submitted,
            Comment = comment,
            UserId = userId,
            CreatedAt = DateTime.UtcNow,
            Status = RevisionStatus.Applied
        });
    }

    public async Task<IReadOnlyList<RevisionView>> GetHistoryAsync(Guid cardId, string? language, int take, CancellationToken ct = default)
    {
        var query = db.TranslationRevisions.Where(r => r.CardId == cardId);

        if (!string.IsNullOrWhiteSpace(language))
            query = query.Where(r => r.Language == language);

        return await query
            .OrderByDescending(r => r.CreatedAt)
            .Take(Math.Clamp(take, 1, 200))
            .Select(r => new RevisionView(
                r.Id,
                r.TargetType.ToString(),
                r.FaceId,
                r.Language,
                r.PreviousValue,
                r.NewValue,
                r.Comment,
                r.Status.ToString(),
                r.CreatedAt,
                r.UserId,
                r.User!.DisplayName))
            .ToListAsync(ct);
    }

    public async Task<EditResult> RevertAsync(Guid cardId, Guid revisionId, Guid userId, CancellationToken ct = default)
    {
        var revision = await db.TranslationRevisions
            .SingleOrDefaultAsync(r => r.Id == revisionId && r.CardId == cardId, ct);

        if (revision is null)
            return new EditResult(EditOutcome.RevisionNotFound);

        // Annuler, c'est réécrire la valeur telle qu'elle était avant cette
        // révision : une nouvelle révision, jamais une suppression.
        var request = new TranslationUpsertRequest([BuildFace(revision)], $"Annulation de la révision {revision.Id}");

        var result = await UpsertAsync(cardId, revision.Language, request, userId, ct);

        if (result.Outcome == EditOutcome.Success)
        {
            revision.Status = RevisionStatus.Reverted;
            await db.SaveChangesAsync(ct);
        }

        return result;
    }

    private static TranslationFaceInput BuildFace(TranslationRevision revision) => revision.TargetType switch
    {
        RevisionTarget.CardName => new TranslationFaceInput(revision.FaceId, revision.PreviousValue, null, null),
        RevisionTarget.CardText => new TranslationFaceInput(revision.FaceId, null, revision.PreviousValue, null),
        RevisionTarget.CardTypeline => new TranslationFaceInput(revision.FaceId, null, null, revision.PreviousValue), _ => new TranslationFaceInput(revision.FaceId, null, null, null)
    };
}
