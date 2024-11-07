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

    [HttpGet("{oracleId}")]
    public async Task<IActionResult> Get(Guid oracleId)
    {
        var cardSetFaces = await _cardSetFaceService.GetCardSetFacesByCardSetId(oracleId);

        if (cardSetFaces == null)
            return NotFound();

        return Ok(cardSetFaces);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSetFace cardSetFaceObject)
    {
        var cardSetFace = await _cardSetFaceService.AddCardSetFace(cardSetFaceObject);

        if (cardSetFace == null)
            return BadRequest();

        return Ok(new
        {
            id = cardSetFace!.CardSetId
        });
    }
}
