using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardNamesController : ControllerBase
{
    private readonly ICardNameService _cardNameService;

    public CardNamesController(ICardNameService cardNameService)
    {
        _cardNameService = cardNameService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardNames = await _cardNameService.GetCardNamesByCardId(cardId);

        return Ok(cardNames);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardName cardNameObject)
    {
        var cardName = await _cardNameService.AddCardName(cardNameObject);

        if (cardName == null)
            return BadRequest();

        return Ok(new
        {
            id = cardName!.Id
        });
    }
}