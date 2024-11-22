using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SupertypesController(ISupertypeService supertypeService) : ControllerBase
{
    [HttpGet]
    public async Task<IActionResult> Get()
    {
        var supertypes = await supertypeService.GetSupertypes();

        return Ok(supertypes);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Supertype supertypeObject)
    {
        var supertypeDb = await supertypeService.AddSupertype(supertypeObject);

        if (supertypeDb == null)
            return BadRequest();

        return Ok(new { id = supertypeDb.Id });
    }
}