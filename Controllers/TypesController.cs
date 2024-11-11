using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class TypesController : ControllerBase
{
    private readonly ITypeService _typeService;

    public TypesController(ITypeService typeService)
    {
        _typeService = typeService;
    }

    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var types = await _typeService.GetTypes();

        if (types == null)
            return NotFound();

        return Ok(types);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Database.Models.Typeline.Type typeObject)
    {
        var typeDb = await _typeService.AddType(typeObject);

        if (typeDb == null)
            return BadRequest();

        return Ok(new { id = typeDb!.Id });
    }
}