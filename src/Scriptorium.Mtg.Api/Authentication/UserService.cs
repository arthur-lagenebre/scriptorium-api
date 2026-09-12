using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Models.Contribution;

namespace Scriptorium.Mtg.Api.Authentication;

public record ExternalLogin(string Provider, string ProviderUserId, string DisplayName, string? Email, string? AvatarUrl);

public interface IUserService
{
    Task<(User User, IReadOnlyCollection<UserRole> Roles)> ResolveAsync(ExternalLogin login, CancellationToken ct = default);
    Task<(User User, IReadOnlyCollection<UserRole> Roles)?> GetAsync(Guid userId, CancellationToken ct = default);
}

public class UserService(MtgDbContext db) : IUserService
{
    public async Task<(User, IReadOnlyCollection<UserRole>)> ResolveAsync(ExternalLogin login, CancellationToken ct = default)
    {
        var user = await db.Users.SingleOrDefaultAsync(u => u.Provider == login.Provider && u.ProviderUserId == login.ProviderUserId, ct);

        if (user is null)
        {
            user = new User
            {
                Id = Guid.NewGuid(),
                Provider = login.Provider,
                ProviderUserId = login.ProviderUserId,
                DisplayName = login.DisplayName,
                Email = login.Email,
                AvatarUrl = login.AvatarUrl,
                CreatedAt = DateTime.UtcNow,
                LastSeenAt = DateTime.UtcNow
            };
            db.Users.Add(user);
        }
        else
        {
            // Le nom affiché et l'avatar suivent le fournisseur ; l'adresse
            // n'est écrasée que si le fournisseur en renvoie une, pour ne pas
            // perdre celle d'une connexion précédente.
            user.DisplayName = login.DisplayName;
            user.AvatarUrl = login.AvatarUrl;
            if (!string.IsNullOrWhiteSpace(login.Email))
                user.Email = login.Email;
            user.LastSeenAt = DateTime.UtcNow;
        }

        await db.SaveChangesAsync(ct);

        var roles = await db.UserRoles.Where(r => r.UserId == user.Id).ToListAsync(ct);
        return (user, roles);
    }

    public async Task<(User, IReadOnlyCollection<UserRole>)?> GetAsync(Guid userId, CancellationToken ct = default)
    {
        var user = await db.Users.SingleOrDefaultAsync(u => u.Id == userId, ct);
        if (user is null)
            return null;

        var roles = await db.UserRoles.Where(r => r.UserId == userId).ToListAsync(ct);
        return (user, roles);
    }
}
