using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardFacesController(ICardFaceService cardFaceService) : ControllerBase
{
    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardFace cardFaceObject)
    {
        var cardFaceDb = await cardFaceService.AddCardFace(cardFaceObject);

        if (cardFaceDb == null)
            return BadRequest();

        return Ok(new { id = cardFaceDb.Id });
    }
}