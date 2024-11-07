using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class ArtistsController : ControllerBase
{
    private readonly IArtistService _artistService;
    public ArtistsController(IArtistService artistService)
    {
        _artistService = artistService;
    }

    [HttpGet("{name}")]
    public async Task<IActionResult> Get(string name)
    {
        var card = await _artistService.GetArtistByName(name);

        if (card == null)
            return NotFound();

        return Ok(card);
    }

    [HttpGet()]
    public async Task<IActionResult> Get()
    {
        var card = await _artistService.GetArtists();

        if (card == null)
            return NotFound();

        return Ok(card);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Artist artistObject)
    {
        var artist = await _artistService.AddArtist(artistObject);

        if (artist == null)
            return BadRequest();

        return Ok(new
        {
            id = artist!.Id
        });
    }
}
