using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace Scriptorium.Mtg.Api.DatabaseContext;

/// <summary>
/// Utilisée uniquement par les outils EF (migrations, has-pending-model-changes).
/// Construit le contexte sans passer par Program.cs, qui exige des secrets
/// absents en intégration continue.
/// </summary>
public class MtgDbContextFactory : IDesignTimeDbContextFactory<MtgDbContext>
{
    public MtgDbContext CreateDbContext(string[] args)
    {
        var connectionString = Environment.GetEnvironmentVariable("MTG_CONNECTION") ?? "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;";

        var options = new DbContextOptionsBuilder<MtgDbContext>()
            .UseSqlServer(connectionString)
            .Options;

        return new MtgDbContext(options);
    }
}