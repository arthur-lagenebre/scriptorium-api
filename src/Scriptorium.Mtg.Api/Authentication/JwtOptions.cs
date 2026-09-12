namespace Scriptorium.Mtg.Api.Authentication;

public class JwtOptions
{
    public string Issuer { get; set; } = "scriptorium-api";
    public string Audience { get; set; } = "scriptorium-web";
    public int LifetimeHours { get; set; } = 12;
}
