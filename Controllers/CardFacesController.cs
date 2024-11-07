using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardFacesController : ControllerBase
{
    private readonly ICardFaceService _cardFaceService;
    public CardFacesController(ICardFaceService cardFaceService)
    {
        _cardFaceService = cardFaceService;
    }

    [HttpGet("{oracleId}")]
    public async Task<IActionResult> Get(Guid oracleId)
    {
        var cardFaces = await _cardFaceService.GetCardFacesByOracleId(oracleId);

        if (cardFaces == null)
            return NotFound();

        return Ok(cardFaces);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardFace cardFaceObject)
    {
        var cardFace = await _cardFaceService.AddCardFace(cardFaceObject);

        if (cardFace == null)
            return BadRequest();

        return Ok(new
        {
            id = cardFace!.Id
        });
    }
}