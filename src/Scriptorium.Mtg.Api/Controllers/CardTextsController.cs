using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class CardTextsController(ICardTextService cardTextService) : ControllerBase
{
    [HttpGet("{cardId:guid}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardTexts = await cardTextService.GetCardTextsByCardId(cardId);

        return Ok(cardTexts);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardText cardTextObject)
    {
        var cardTextDb = await cardTextService.AddCardText(cardTextObject);

        if (cardTextDb == null)
            return BadRequest();

        return Ok(new { cardTextDb.Id });
    }
}