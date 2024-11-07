using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class ColorsController : ControllerBase
{
    private readonly IColorService _colorService;
    public ColorsController(IColorService colorService)
    {
        _colorService = colorService;
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> Get(int id)
    {
        var colors = await _colorService.GetColorsById(id);

        if (colors == null)
            return NotFound();

        return Ok(colors);
    }

    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var colors = await _colorService.GetColors();

        return Ok(colors);
    }
}
