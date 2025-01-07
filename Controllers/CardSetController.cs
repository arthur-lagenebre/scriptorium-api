using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardSetController(ICardSetService cardSetService) : ControllerBase
{
    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSet cardSetObject)
    {
        var cardSetFaceDb = await cardSetService.AddCardSet(cardSetObject);

        if (cardSetFaceDb == null)
            return BadRequest();

        return Ok(new { id = cardSetFaceDb.Id });
    }
}