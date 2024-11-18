using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class RulingsController : ControllerBase
{
    private readonly IRulingService _rulingService;

    public RulingsController(IRulingService rulingService)
    {
        _rulingService = rulingService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var rulings = await _rulingService.GetRulingsByCardId(cardId);

        if (rulings == null)
            return NotFound();

        return Ok(rulings);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Ruling rulingObject)
    {
        var ruling = await _rulingService.AddRuling(rulingObject);

        if (ruling == null)
            return BadRequest();

        return Ok(new { id = ruling!.Id });
    }
}