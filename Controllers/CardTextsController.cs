using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardTextsController(ICardTextService cardTextService) : ControllerBase
{
    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardText cardTextObject)
    {
        var cardTextDb = await cardTextService.AddCardText(cardTextObject);

        if (cardTextDb == null)
            return BadRequest();

        return Ok(new { cardTextDb.Id });
    }
}