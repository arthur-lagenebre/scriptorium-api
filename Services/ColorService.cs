using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class ColorService(MtgDbContext db) : IColorService
{
    public async Task<IList<Color>> GetColors()
    {
        return await db.Colors.ToListAsync();
    }

    public async Task<IList<Color>> GetColorsById(int id)
    {
        return await db.Colors.Where(x => x.Id.Equals(id)).ToListAsync();
    }
}
