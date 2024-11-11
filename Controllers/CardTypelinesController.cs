using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardTypelinesController : ControllerBase
{
    private readonly ICardTypelineService _cardTypelineService;

    public CardTypelinesController(ICardTypelineService cardTypelineService)
    {
        _cardTypelineService = cardTypelineService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardNames = await _cardTypelineService.GetCardTypelinesByCardId(cardId);

        return Ok(cardNames);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardTypeline cardTypeline)
    {
        var cardTypelineDb = await _cardTypelineService.AddCardTypeline(cardTypeline);

        if (cardTypelineDb == null)
            return BadRequest();

        return Ok(new { id = cardTypelineDb!.Id });
    }
}