using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class CardTutorsController(ICardTutorsService cardTutorsService) : ControllerBase
{
    [HttpGet("search/{cardName}")]
    public IActionResult Get(string cardName)
    {
        var cardTexts = cardTutorsService.GetCardTutorsByCardName(cardName);

        return Ok(cardTexts);
    }

    [HttpGet("{id:guid}")]
    public IActionResult Get(Guid id)
    {
        var cardTexts = cardTutorsService.GetCardTutorById(id);

        return Ok(cardTexts);
    }
}
