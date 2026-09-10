using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class CardFacesController(ICardFaceService cardFaceService) : ControllerBase
{
    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardFaces = await cardFaceService.GetCardFacesByCardId(cardId);

        return Ok(cardFaces);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardFace cardFaceObject)
    {
        var cardFaceDb = await cardFaceService.AddCardFace(cardFaceObject);

        if (cardFaceDb == null)
            return BadRequest();

        return Ok(new { id = cardFaceDb.Id });
    }
}