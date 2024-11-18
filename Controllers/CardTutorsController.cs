using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class CardTutorsController : ControllerBase
{
    private readonly ICardTutorsService _cardTutorsService;

    public CardTutorsController(ICardTutorsService cardTutorsService)
    {
        _cardTutorsService = cardTutorsService;
    }

    [HttpGet("search/{cardName}")]
    public IActionResult Get(string cardName)
    {
        var cardTexts = _cardTutorsService.GetCardTutorsByCardName(cardName);

        return Ok(cardTexts);
    }

    [HttpGet("{id}")]
    public IActionResult Get(Guid id)
    {
        var cardTexts = _cardTutorsService.GetCardTutorById(id);

        return Ok(cardTexts);
    }
}
