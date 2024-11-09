using MTG.Database.Models;

namespace MTG.Api.Interfaces;

public interface IColorService
{
    Task<IList<Color>> GetColors();

    Task<IList<Color>> GetColorsById(int id);
}