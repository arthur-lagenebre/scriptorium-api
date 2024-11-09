using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardSetController : ControllerBase
{
    private readonly ICardSetService _cardSetService;

    public CardSetController(ICardSetService cardSetService)
    {
        _cardSetService = cardSetService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardSetFaces = await _cardSetService.GetCardSetsByCardId(cardId);

        if (cardSetFaces == null)
            return NotFound();

        return Ok(cardSetFaces);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardSet CardSetObject)
    {
        var cardSetFace = await _cardSetService.AddCardSet(CardSetObject);

        if (cardSetFace == null)
            return BadRequest();

        return Ok(new
        {
            id = cardSetFace!.Id
        });
    }
}