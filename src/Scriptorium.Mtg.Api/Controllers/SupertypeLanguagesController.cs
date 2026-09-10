using Microsoft.AspNetCore.Mvc;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Typeline;

namespace Scriptorium.Mtg.Api.Controllers;

[Route("api/[controller]")]
public class SupertypeLanguagesController(ISupertypeLanguageService supertypeLanguageService) : ControllerBase
{
    [HttpGet("language")]
    public async Task<IActionResult> Get(string language)
    {
        var supertypeLanguages = await supertypeLanguageService.GetSupertypeLanguagesByLanguage(language);

        return Ok(supertypeLanguages);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] SupertypeLanguage supertypeObject)
    {
        var supertypeLanguageDb = await supertypeLanguageService.AddSupertype(supertypeObject);

        if (supertypeLanguageDb == null)
            return BadRequest();

        return Ok(new { id = supertypeLanguageDb.Id });
    }
}