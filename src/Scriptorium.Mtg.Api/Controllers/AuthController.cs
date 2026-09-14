using System.Security.Claims;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Authentication;

namespace Scriptorium.Mtg.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class AuthController(IUserService userService, ITokenService tokenService, IConfiguration configuration) : ControllerBase
{
    private const string ExternalScheme = "External";

    private string FrontendBaseUrl => configuration["Frontend:BaseUrl"]?.TrimEnd('/') ?? throw new InvalidOperationException("Frontend:BaseUrl n'est pas configuré.");

    /// <summary>Démarre la connexion : redirige vers le fournisseur choisi.</summary>
    [HttpGet("login/{provider}")]
    [AllowAnonymous]
    public IActionResult Login(string provider, [FromQuery] string? returnPath)
    {
        var scheme = provider.ToLowerInvariant() switch
        {
            "google" => "Google",
            "github" => "GitHub",
            _ => null
        };

        if (scheme is null)
            return BadRequest($"Fournisseur inconnu : {provider}");

        // returnPath est un chemin relatif, jamais une URL absolue : cela
        // empêche de détourner la redirection vers un domaine tiers.
        var safePath = string.IsNullOrWhiteSpace(returnPath) || !returnPath.StartsWith('/') ? "/" : returnPath;

        var properties = new AuthenticationProperties { RedirectUri = Url.Action(nameof(Callback), new { returnPath = safePath }) };

        return Challenge(properties, scheme);
    }

    /// <summary>Retour du fournisseur : crée le compte si besoin, émet le jeton.</summary>
    [HttpGet("callback")]
    [AllowAnonymous]
    public async Task<IActionResult> Callback([FromQuery] string? returnPath, CancellationToken ct)
    {
        var result = await HttpContext.AuthenticateAsync(ExternalScheme);

        if (!result.Succeeded || result.Principal is null)
            return Redirect($"{FrontendBaseUrl}/auth/error");

        var provider = result.Properties?.Items[".AuthScheme"]?.ToLowerInvariant() ?? "unknown";

        var providerUserId = result.Principal.FindFirstValue(ClaimTypes.NameIdentifier);
        if (string.IsNullOrEmpty(providerUserId))
            return Redirect($"{FrontendBaseUrl}/auth/error");

        var login = new ExternalLogin(Provider: provider, ProviderUserId: providerUserId, DisplayName: result.Principal.FindFirstValue(ClaimTypes.Name) ?? "Contributeur", Email: result.Principal.FindFirstValue(ClaimTypes.Email), AvatarUrl: FindAvatar(result.Principal));

        var (user, roles) = await userService.ResolveAsync(login, ct);

        // Le cookie externe n'a servi qu'à transporter le résultat de la
        // poignée de main : il n'a plus de raison d'être.
        await HttpContext.SignOutAsync(ExternalScheme);

        if (user.IsBlocked)
            return Redirect($"{FrontendBaseUrl}/auth/blocked");

        var token = tokenService.CreateToken(user, roles);
        var path = string.IsNullOrWhiteSpace(returnPath) ? "/" : returnPath;

        // Le jeton part dans le fragment : celui-ci n'est pas transmis au
        // serveur ni journalisé dans les logs d'accès, contrairement à la
        // chaîne de requête.
        return Redirect($"{FrontendBaseUrl}/auth/callback#token={Uri.EscapeDataString(token)}&next={Uri.EscapeDataString(path)}");
    }

    /// <summary>Profil du porteur du jeton.</summary>
    [HttpGet("me")]
    [Authorize]
    public async Task<IActionResult> Me(CancellationToken ct)
    {
        var sub = User.FindFirstValue(System.IdentityModel.Tokens.Jwt.JwtRegisteredClaimNames.Sub) ?? User.FindFirstValue(ClaimTypes.NameIdentifier);

        if (!Guid.TryParse(sub, out var userId))
            return Unauthorized();

        var found = await userService.GetAsync(userId, ct);
        if (found is null)
            return Unauthorized();

        var (user, roles) = found.Value;

        return Ok(new
        {
            user.Id,
            user.DisplayName,
            user.AvatarUrl,
            user.Provider,
            user.IsBlocked,
            Roles = roles.Select(r => new { r.Role, r.Language })
        });
    }

    private static string? FindAvatar(ClaimsPrincipal principal) => principal.FindFirstValue("picture") ?? principal.FindFirstValue("urn:github:avatar") ?? principal.FindFirstValue("avatar_url");
}
