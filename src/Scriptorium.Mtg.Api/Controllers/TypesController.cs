using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class TypesController(ITypeService typeService) : ControllerBase
{
    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var types = await typeService.GetTypes();

        return Ok(types);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Scriptorium.Mtg.Models.Typeline.Type typeObject)
    {
        var typeDb = await typeService.AddType(typeObject);

        if (typeDb == null)
            return BadRequest();

        return Ok(new { id = typeDb.Id });
    }
}