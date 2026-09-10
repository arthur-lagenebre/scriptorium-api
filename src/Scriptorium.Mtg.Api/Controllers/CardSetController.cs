using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class CardSetController(ICardSetService cardSetService) : ControllerBase
{
    [HttpGet("{cardId:guid}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardSetFaces = await cardSetService.GetCardSetsByCardId(cardId);

        return Ok(cardSetFaces);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSet cardSetObject)
    {
        var cardSetFaceDb = await cardSetService.AddCardSet(cardSetObject);

        if (cardSetFaceDb == null)
            return BadRequest();

        return Ok(new { id = cardSetFaceDb.Id });
    }
}