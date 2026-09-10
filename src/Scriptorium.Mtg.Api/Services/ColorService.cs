using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models;

namespace Scriptorium.Mtg.Api.Services;

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
