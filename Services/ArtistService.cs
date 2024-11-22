using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class ArtistService : IArtistService
{
    private readonly MtgDbContext _db;

    public ArtistService(MtgDbContext db)
    {
        _db = db;
    }

    public async Task<IList<Artist>> GetArtists()
    {
        return await _db.Artists.ToListAsync();
    }

    public async Task<Artist?> GetArtistByName(string name)
    {
        return await _db.Artists.FirstOrDefaultAsync(x => x.Name.Equals(name));
    }

    public async Task<Artist?> AddArtist(Artist artist)
    {
        var artistDb = await _db.Artists.FirstOrDefaultAsync(x => x.Name.Equals(artist.Name));

        if (artistDb != null)
            return artistDb;

        _db.Artists.Add(artist);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? artist : null;
    }
}
