using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;

namespace MTG.Api.Controllers;

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
    public async Task<IActionResult> Post([FromBody] Database.Models.Typeline.Type typeObject)
    {
        var typeDb = await typeService.AddType(typeObject);

        if (typeDb == null)
            return BadRequest();

        return Ok(new { id = typeDb.Id });
    }
}