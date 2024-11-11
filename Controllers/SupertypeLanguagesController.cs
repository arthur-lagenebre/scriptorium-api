using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class SupertypeLanguagesController : ControllerBase
{
    private readonly ISupertypeLanguageService _supertypeLanguageService;

    public SupertypeLanguagesController(ISupertypeLanguageService supertypeLanguageService)
    {
        _supertypeLanguageService = supertypeLanguageService;
    }

    [HttpGet("language")]
    public async Task<IActionResult> Get(string language)
    {
        var supertypeLanguages = await _supertypeLanguageService.GetSupertypeLanguagesByLanguage(language);

        if (supertypeLanguages == null)
            return NotFound();

        return Ok(supertypeLanguages);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] SupertypeLanguage supertypeObject)
    {
        var supertypeLanguageDb = await _supertypeLanguageService.AddSupertype(supertypeObject);

        if (supertypeLanguageDb == null)
            return BadRequest();

        return Ok(new { id = supertypeLanguageDb!.Id });
    }
}