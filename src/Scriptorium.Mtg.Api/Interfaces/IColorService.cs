using Scriptorium.Mtg.Models;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface IColorService
{
    Task<IList<Color>> GetColors();

    Task<IList<Color>> GetColorsById(int id);
}