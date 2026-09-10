using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class CardTypelinesController(ICardTypelineService cardTypelineService) : ControllerBase
{
    [HttpGet("{cardId:guid}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardNames = await cardTypelineService.GetCardTypelinesByCardId(cardId);

        return Ok(cardNames);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardTypeline cardTypeline)
    {
        var cardTypelineDb = await cardTypelineService.AddCardTypeline(cardTypeline);

        if (cardTypelineDb == null)
            return BadRequest();

        return Ok(new { id = cardTypelineDb.Id });
    }
}