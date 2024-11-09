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

    [HttpGet("{language}")]
    public async Task<IActionResult> Get(string language)
    {
        var sets = await _typeService.GetTypesByLanguage(language);

        if (sets == null)
            return NotFound();

        return Ok(sets);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Database.Models.Type typeObject)
    {
        var type = await _typeService.AddType(typeObject);

        if (type == null)
            return BadRequest();

        return Ok(new
        {
            id = type!.Id
        });
    }
}