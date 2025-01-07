using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardSetFacesController(ICardSetFaceService cardSetFaceService) : ControllerBase
{
    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSetFace cardSetFaceObject)
    {
        var cardSetFaceDb = await cardSetFaceService.AddCardSetFace(cardSetFaceObject);

        if (cardSetFaceDb == null)
            return BadRequest();

        return Ok(new { id = cardSetFaceDb.CardSetId });
    }
}