using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardsController(ICardService cardService) : ControllerBase
{
    [HttpGet("{id:guid}")]
    public async Task<IActionResult> Get(Guid id)
    {
        var card = await cardService.GetCardById(id);

        if (card == null)
            return NotFound();

        return Ok(card);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Card cardObject)
    {
        var cardDb = await cardService.AddCard(cardObject);

        if (cardDb == null)
            return BadRequest();

        return Ok(new { id = cardDb.Id });
    }
}