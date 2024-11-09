using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardTypesController : ControllerBase
{
    private readonly ICardTypeService _cardTypeService;

    public CardTypesController(ICardTypeService cardTypeService)
    {
        _cardTypeService = cardTypeService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardType = await _cardTypeService.GetCardTypeByCardId(cardId);

        if (cardType == null)
            return NotFound();

        return Ok(cardType);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardType cardTypeObject)
    {
        var cardType = await _cardTypeService.AddCardType(cardTypeObject);

        if (cardType == null)
            return BadRequest();

        return Ok(new
        {
            id = cardType!.Id
        });
    }
}