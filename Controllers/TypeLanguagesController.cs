using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models.Typeline;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class TypeLanguagesController : ControllerBase
{
    private readonly ITypeLanguageService _typeLanguageService;

    public TypeLanguagesController(ITypeLanguageService typeLanguageService)
    {
        _typeLanguageService = typeLanguageService;
    }

    [HttpGet("language")]
    public async Task<IActionResult> Get(string language)
    {
        var typeLanguages = await _typeLanguageService.GetTypeLanguagesByLanguage(language);

        if (typeLanguages == null)
            return NotFound();

        return Ok(typeLanguages);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] TypeLanguage typeLanguageObject)
    {
        var typeLanguageDb = await _typeLanguageService.AddType(typeLanguageObject);

        if (typeLanguageDb == null)
            return BadRequest();

        return Ok(new { id = typeLanguageDb!.Id });
    }
}