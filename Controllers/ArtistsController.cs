using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class ArtistsController(IArtistService artistService) : ControllerBase
{
    [HttpGet("{name}")]
    public async Task<IActionResult> Get(string name)
    {
        var artist = await artistService.GetArtistByName(name);

        if (artist == null)
            return NotFound();

        return Ok(artist);
    }

    [HttpGet()]
    public async Task<IActionResult> Get()
    {
        var artist = await artistService.GetArtists();

        return Ok(artist);
    }

    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Artist artistObject)
    {
        var artistDb = await artistService.AddArtist(artistObject);

        if (artistDb == null)
            return BadRequest();

        return Ok(new { id = artistDb.Id });
    }
}