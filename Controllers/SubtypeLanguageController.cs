using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SubtypeLanguageController : ControllerBase
{
    private readonly ISubtypeLanguageService _subtypeLanguageService;

    public SubtypeLanguageController(ISubtypeLanguageService subtypeLanguageService)
    {
        _subtypeLanguageService = subtypeLanguageService;
    }

    [HttpGet("language")]
    public async Task<IActionResult> Get(string language)
    {
        var subtypeLanguages = await _subtypeLanguageService.GetSubtypeLanguagesByLanguage(language);

        if (subtypeLanguages == null)
            return NotFound();

        return Ok(subtypeLanguages);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] SubtypeLanguage subtypeLanguageObject)
    {
        var subtypeLanguageDb = await _subtypeLanguageService.AddSubtypeLanguage(subtypeLanguageObject);

        if (subtypeLanguageDb == null)
            return BadRequest();

        return Ok(new { id = subtypeLanguageDb!.Id });
    }
}