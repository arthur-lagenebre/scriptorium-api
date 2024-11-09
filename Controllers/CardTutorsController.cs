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

    [HttpGet("{cardName}")]
    public async Task<IActionResult> Get(string cardName)
    {
        var cardTexts = await _cardTutorsService.GetCardTutorsByCardName(cardName);

        return Ok(cardTexts);
    }
}
