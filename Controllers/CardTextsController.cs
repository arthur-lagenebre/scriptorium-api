using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardTextsController : ControllerBase
{
    private readonly ICardTextService _cardTextService;
    public CardTextsController(ICardTextService cardTextService)
    {
        _cardTextService = cardTextService;
    }

    [HttpGet("{oracleId}")]
    public async Task<IActionResult> Get(Guid oracleId)
    {
        var cardTexts = await _cardTextService.GetCardTextsByOracleId(oracleId);

        return Ok(cardTexts);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardText cardTextObject)
    {
        var cardText = await _cardTextService.AddCardText(cardTextObject);

        if (cardText == null)
            return BadRequest();

        return Ok(new
        {
            cardText.Id
        });
    }
}
