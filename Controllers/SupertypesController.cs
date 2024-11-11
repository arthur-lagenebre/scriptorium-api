using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SupertypesController : ControllerBase
{
    private readonly ISupertypeService _supertypeService;

    public SupertypesController(ISupertypeService supertypeService)
    {
        _supertypeService = supertypeService;
    }

    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var supertypes = await _supertypeService.GetSupertypes();

        if (supertypes == null)
            return NotFound();

        return Ok(supertypes);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Supertype supertypeObject)
    {
        var supertypeDb = await _supertypeService.AddSupertype(supertypeObject);

        if (supertypeDb == null)
            return BadRequest();

        return Ok(new { id = supertypeDb!.Id });
    }
}