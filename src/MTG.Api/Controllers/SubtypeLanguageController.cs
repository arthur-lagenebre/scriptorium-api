using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SubtypeLanguageController(ISubtypeLanguageService subtypeLanguageService) : ControllerBase
{
    [HttpGet("language")]
    public async Task<IActionResult> Get(string language)
    {
        var subtypeLanguages = await subtypeLanguageService.GetSubtypeLanguagesByLanguage(language);

        return Ok(subtypeLanguages);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] SubtypeLanguage subtypeLanguageObject)
    {
        var subtypeLanguageDb = await subtypeLanguageService.AddSubtypeLanguage(subtypeLanguageObject);

        if (subtypeLanguageDb == null)
            return BadRequest();

        return Ok(new { id = subtypeLanguageDb.Id });
    }
}