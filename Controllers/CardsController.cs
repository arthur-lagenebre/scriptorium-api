using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardsController : ControllerBase
{
    private readonly ICardService _cardService;
    public CardsController(ICardService cardService)
    {
        _cardService = cardService;
    }

    [HttpGet("{oracleId}")]
    public async Task<IActionResult> Get(Guid oracleId)
    {
        var card = await _cardService.GetCardByOracleId(oracleId);

        if (card == null)
            return NotFound();
        
        return Ok(card);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Card cardObject)
    {
        var card = await _cardService.AddCard(cardObject);

        if (card == null)
            return BadRequest();

        return Ok(new
        {
            id = card!.OracleId
        });
    }
}
