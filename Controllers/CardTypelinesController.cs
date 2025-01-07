using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardTypelinesController(ICardTypelineService cardTypelineService) : ControllerBase
{
    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardTypeline cardTypeline)
    {
        var cardTypelineDb = await cardTypelineService.AddCardTypeline(cardTypeline);

        if (cardTypelineDb == null)
            return BadRequest();

        return Ok(new { id = cardTypelineDb.Id });
    }
}