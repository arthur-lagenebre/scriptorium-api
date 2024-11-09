using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardSubtypesController : ControllerBase
{
    private readonly ICardSubtypeService _cardSubtypeFaceService;

    public CardSubtypesController(ICardSubtypeService cardSubtypeFaceService)
    {
        _cardSubtypeFaceService = cardSubtypeFaceService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardSubtypes = await _cardSubtypeFaceService.GetCardSubtypesByCardId(cardId);

        if (cardSubtypes == null)
            return NotFound();

        return Ok(cardSubtypes);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSubtype cardSetFaceObject)
    {
        var cardSubtype = await _cardSubtypeFaceService.AddCardSubtype(cardSetFaceObject);

        if (cardSubtype == null)
            return BadRequest();

        return Ok(new
        {
            id = cardSubtype!.Id
        });
    }
}