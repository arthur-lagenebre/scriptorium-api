using System.Security.Claims;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Translations;

namespace Scriptorium.Mtg.Api.Controllers;

[ApiController]
[Route("api/cards/{cardId:guid}")]
public class TranslationsController(ITranslationEditService service) : ControllerBase
{
    /// <summary>Traduction d'une carte dans une langue. Lecture anonyme.</summary>
    [HttpGet("translations/{language}")]
    [AllowAnonymous]
    public async Task<IActionResult> Get(Guid cardId, string language, CancellationToken ct)
    {
        var view = await service.GetAsync(cardId, language, ct);
        return view is null ? NotFound() : Ok(view);
    }

    /// <summary>Crée ou met à jour la traduction. Authentification requise.</summary>
    [HttpPut("translations/{language}")]
    [Authorize]
    public async Task<IActionResult> Upsert(Guid cardId, string language, [FromBody] TranslationUpsertRequest request, CancellationToken ct)
    {
        if (request.Faces.Count == 0)
            return BadRequest("Aucune face soumise.");

        if (language.Length is < 2 or > 3)
            return BadRequest("Code de langue invalide.");

        if (!TryGetUserId(out var userId))
            return Unauthorized();

        var result = await service.UpsertAsync(cardId, language, request, userId, ct);

        return result.Outcome switch
        {
            EditOutcome.Success => Ok(new { revisions = result.RevisionCount }),
            EditOutcome.NoChange => Ok(new { revisions = 0 }),
            EditOutcome.CardNotFound => NotFound(),
            EditOutcome.LanguageNotEditable => BadRequest(result.Message),
            EditOutcome.UserBlocked => Forbid(),
            _ => StatusCode(500)
        };
    }

    /// <summary>Historique des modifications. Lecture anonyme : la transparence fait partie du modèle wiki.</summary>
    [HttpGet("history")]
    [AllowAnonymous]
    public async Task<IActionResult> History(Guid cardId, [FromQuery] string? language, [FromQuery] int take = 50, CancellationToken ct = default)
        => Ok(await service.GetHistoryAsync(cardId, language, take, ct));

    /// <summary>Rétablit la valeur antérieure à une révision, en en créant une nouvelle.</summary>
    [HttpPost("revert/{revisionId:guid}")]
    [Authorize]
    public async Task<IActionResult> Revert(Guid cardId, Guid revisionId, CancellationToken ct)
    {
        if (!TryGetUserId(out var userId))
            return Unauthorized();

        var result = await service.RevertAsync(cardId, revisionId, userId, ct);

        return result.Outcome switch
        {
            EditOutcome.Success => Ok(new { revisions = result.RevisionCount }),
            EditOutcome.NoChange => Ok(new { revisions = 0 }),
            EditOutcome.RevisionNotFound => NotFound(),
            EditOutcome.UserBlocked => Forbid(),
            EditOutcome.LanguageNotEditable => BadRequest(result.Message),
            _ => StatusCode(500)
        };
    }

    private bool TryGetUserId(out Guid userId)
    {
        var sub = User.FindFirstValue(JwtRegisteredClaimNames.Sub) ?? User.FindFirstValue(ClaimTypes.NameIdentifier);

        return Guid.TryParse(sub, out userId);
    }
}
