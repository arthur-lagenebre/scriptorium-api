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

    [HttpGet("{oracleId}")]
    public async Task<IActionResult> Get(Guid oracleId)
    {
        var cardType = await _cardTypeService.GetCardTypeByOracleId(oracleId);

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