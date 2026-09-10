using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class SetsController(ISetService setService) : ControllerBase
{
    [HttpGet()]
    public async Task<IActionResult> Get()
    {
        var sets = await setService.GetSets();

        return Ok(sets);
    }

    [HttpGet("{code}")]
    public async Task<IActionResult> Get(string code)
    {
        var set = await setService.GetSetByCode(code);

        if (set == null)
            return NotFound();

        return Ok(set);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Set setObject)
    {
        var set = await setService.AddSet(setObject);

        if (set == null)
            return BadRequest();

        return Ok(new { id = set.Id });
    }
}