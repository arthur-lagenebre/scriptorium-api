using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using Scriptorium.Mtg.Models.Contribution;

namespace Scriptorium.Mtg.Api.Authentication;

public interface ITokenService
{
    string CreateToken(User user, IReadOnlyCollection<UserRole> roles);
}

public class TokenService(JwtOptions options, SigningCredentials credentials) : ITokenService
{
    public string CreateToken(User user, IReadOnlyCollection<UserRole> roles)
    {
        var claims = new List<Claim>
        {
            new(JwtRegisteredClaimNames.Sub, user.Id.ToString()),
            new(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
            new(ClaimTypes.Name, user.DisplayName),
            new("provider", user.Provider)
        };

        if (!string.IsNullOrEmpty(user.AvatarUrl))
            claims.Add(new Claim("avatar", user.AvatarUrl));

        // Un rôle global devient "moderator", un rôle limité à une langue
        // devient "moderator:fr". L'autorisation par langue se lit donc
        // directement dans le jeton, sans requête supplémentaire.
        foreach (var role in roles)
            claims.Add(new Claim(ClaimTypes.Role,
                role.Language is null ? role.Role : $"{role.Role}:{role.Language}"));

        var token = new JwtSecurityToken(
            issuer: options.Issuer,
            audience: options.Audience,
            claims: claims,
            notBefore: DateTime.UtcNow,
            expires: DateTime.UtcNow.AddHours(options.LifetimeHours),
            signingCredentials: credentials);

        return new JwtSecurityTokenHandler().WriteToken(token);
    }
}
