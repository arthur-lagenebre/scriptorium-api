using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class ColorsController(IColorService colorService) : ControllerBase
{
    [HttpGet("{id:int}")]
    public async Task<IActionResult> Get(int id)
    {
        var colors = await colorService.GetColorsById(id);

        return Ok(colors);
    }

    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var colors = await colorService.GetColors();

        return Ok(colors);
    }
}