using MTG.Database.Models;

namespace MTG.Api.Interfaces;

public interface IArtistService
{
    Task<Artist?> AddArtist(Artist artist);
    Task<Artist?> GetArtistByName(string name);
    Task<IList<Artist>> GetArtists();
}