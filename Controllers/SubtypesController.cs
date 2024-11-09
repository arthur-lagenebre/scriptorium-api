using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SubtypesController : ControllerBase
{
    private readonly ISubtypeService _subtypeService;

    public SubtypesController(ISubtypeService subtypeService)
    {
        _subtypeService = subtypeService;
    }

    [HttpGet("{language}")]
    public async Task<IActionResult> Get(string language)
    {
        var subtypes = await _subtypeService.GetSubtypesByLanguage(language);

        if (subtypes == null)
            return NotFound();

        return Ok(subtypes);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Subtype subtypeObject)
    {
        var subtype = await _subtypeService.AddSubtype(subtypeObject);

        if (subtype == null)
            return BadRequest();

        return Ok(new
        {
            id = subtype!.Id
        });
    }
}