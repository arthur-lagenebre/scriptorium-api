using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class TypeLanguagesController(ITypeLanguageService typeLanguageService) : ControllerBase
{
    [HttpGet("language")]
    public async Task<IActionResult> Get(string language)
    {
        var typeLanguages = await typeLanguageService.GetTypeLanguagesByLanguage(language);

        return Ok(typeLanguages);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] TypeLanguage typeLanguageObject)
    {
        var typeLanguageDb = await typeLanguageService.AddType(typeLanguageObject);

        if (typeLanguageDb == null)
            return BadRequest();

        return Ok(new { id = typeLanguageDb.Id });
    }
}