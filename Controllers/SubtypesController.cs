using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SubtypesController : ControllerBase
{
    private readonly ISubtypeService _subtypeService;

    public SubtypesController(ISubtypeService subtypeService)
    {
        _subtypeService = subtypeService;
    }

    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var subtypes = await _subtypeService.GetSubtypes();

        if (subtypes == null)
            return NotFound();

        return Ok(subtypes);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Subtype subtypeObject)
    {
        var subtypeDb = await _subtypeService.AddSubtype(subtypeObject);

        if (subtypeDb == null)
            return BadRequest();

        return Ok(new { id = subtypeDb!.Id });
    }
}