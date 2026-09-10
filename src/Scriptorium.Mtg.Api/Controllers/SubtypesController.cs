using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class SubtypesController(ISubtypeService subtypeService) : ControllerBase
{
    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var subtypes = await subtypeService.GetSubtypes();

        return Ok(subtypes);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Subtype subtypeObject)
    {
        var subtypeDb = await subtypeService.AddSubtype(subtypeObject);

        if (subtypeDb == null)
            return BadRequest();

        return Ok(new { id = subtypeDb.Id });
    }
}