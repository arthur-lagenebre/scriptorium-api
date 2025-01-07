using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SetsController(ISetService setService) : ControllerBase
{
    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Set setObject)
    {
        var set = await setService.AddSet(setObject);

        if (set == null)
            return BadRequest();

        return Ok(new { id = set.Id });
    }
}