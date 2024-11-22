using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardNamesController(ICardNameService cardNameService) : ControllerBase
{
    [HttpGet("{cardId:guid}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var cardNames = await cardNameService.GetCardNamesByCardId(cardId);

        return Ok(cardNames);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] CardName cardNameObject)
    {
        var cardNameDb = await cardNameService.AddCardName(cardNameObject);

        if (cardNameDb == null)
            return BadRequest();

        return Ok(new { id = cardNameDb.Id });
    }
}