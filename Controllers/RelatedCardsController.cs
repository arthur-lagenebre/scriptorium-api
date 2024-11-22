using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class RelatedCardsController(IRelatedCardService relatedCardService) : ControllerBase
{
    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var relatedCards = await relatedCardService.GetRelatedCardsByCardId(cardId);

        return Ok(relatedCards);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] RelatedCard relatedCardObject)
    {
        var relatedCard = await relatedCardService.AddRelatedCard(relatedCardObject);

        if (relatedCard == null)
            return BadRequest();

        return Ok(new { id = relatedCard.Id });
    }
}