using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardSupertypesController : ControllerBase
{
    private readonly ICardSupertypeService _cardSupertypeService;
    public CardSupertypesController(ICardSupertypeService cardSupertypeService)
    {
        _cardSupertypeService = cardSupertypeService;
    }

    [HttpGet("{oracleId}")]
    public async Task<IActionResult> Get(Guid oracleId)
    {
        var cardSupertypes = await _cardSupertypeService.GetCardSupertypeByOracleId(oracleId);

        if (cardSupertypes == null)
            return NotFound();

        return Ok(cardSupertypes);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSupertype cardSetFaceObject)
    {
        var cardSupertype = await _cardSupertypeService.AddCardSupertype(cardSetFaceObject);

        if (cardSupertype == null)
            return BadRequest();

        return Ok(new
        {
            id = cardSupertype!.Id
        });
    }
}
