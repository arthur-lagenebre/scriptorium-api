using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class RelatedCardsController : ControllerBase
{
    private readonly IRelatedCardService _relatedCardService;

    public RelatedCardsController(IRelatedCardService relatedCardService)
    {
        _relatedCardService = relatedCardService;
    }

    [HttpGet("{cardId}")]
    public async Task<IActionResult> Get(Guid cardId)
    {
        var relatedCards = await _relatedCardService.GetRelatedCardsByCardId(cardId);

        if (relatedCards == null)
            return NotFound();

        return Ok(relatedCards);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] RelatedCard relatedCardObject)
    {
        var relatedCard = await _relatedCardService.AddRelatedCard(relatedCardObject);

        if (relatedCard == null)
            return BadRequest();

        return Ok(new { id = relatedCard!.Id });
    }
}