using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardSetFacesController : ControllerBase
{
    private readonly ICardSetFaceService _cardSetFaceService;

    public CardSetFacesController(ICardSetFaceService cardSetFaceService)
    {
        _cardSetFaceService = cardSetFaceService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardSetFaces = await _cardSetFaceService.GetCardSetFacesByCardSetId(cardId);

        if (cardSetFaces == null)
            return NotFound();

        return Ok(cardSetFaces);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSetFace cardSetFaceObject)
    {
        var cardSetFaceDb = await _cardSetFaceService.AddCardSetFace(cardSetFaceObject);

        if (cardSetFaceDb == null)
            return BadRequest();

        return Ok(new { id = cardSetFaceDb!.CardSetId });
    }
}