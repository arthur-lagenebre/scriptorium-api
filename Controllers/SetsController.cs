using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SetsController : ControllerBase
{
    private readonly ISetService _setService;

    public SetsController(ISetService setService)
    {
        _setService = setService;
    }

    [HttpGet()]
    public async Task<IActionResult> Get()
    {
        var sets = await _setService.GetSets();

        if (sets == null)
            return NotFound();

        return Ok(sets);
    }

    [HttpGet("{code}")]
    public async Task<IActionResult> Get(string code)
    {
        var set = await _setService.GetSetByCode(code);

        if (set == null)
            return NotFound();

        return Ok(set);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Set setObject)
    {
        var set = await _setService.AddSet(setObject);

        if (set == null)
            return BadRequest();

        return Ok(new
        {
            id = set!.Id
        });
    }
}