using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class ColorService : IColorService
{
    private readonly MTGDbContext _db;

    public ColorService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<IList<Color>> GetColors()
    {
        return await _db.Colors.ToListAsync();
    }

    public async Task<IList<Color>> GetColorsById(int id)
    {
        return await _db.Colors.Where(x => x.Id.Equals(id)).ToListAsync();
    }
}
