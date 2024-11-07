using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SupertypesController : ControllerBase
{
    private readonly ISupertypeService _supertypeService;
    public SupertypesController(ISupertypeService supertypeService)
    {
        _supertypeService = supertypeService;
    }

    [HttpGet("{language}")]
    public async Task<IActionResult> Get(string language)
    {
        var sets = await _supertypeService.GetSupertypesByLanguage(language);

        if (sets == null)
            return NotFound();

        return Ok(sets);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Supertype supertypeObject)
    {
        var supertype = await _supertypeService.AddSupertype(supertypeObject);

        if (supertype == null)
            return BadRequest();

        return Ok(new
        {
            id = supertype!.Id
        });
    }
}
