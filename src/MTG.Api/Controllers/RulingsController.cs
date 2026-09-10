using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class RulingsController(IRulingService rulingService) : ControllerBase
{
    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var rulings = await rulingService.GetRulingsByCardId(cardId);

        return Ok(rulings);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Ruling rulingObject)
    {
        var ruling = await rulingService.AddRuling(rulingObject);

        if (ruling == null)
            return BadRequest();

        return Ok(new { id = ruling.Id });
    }
}