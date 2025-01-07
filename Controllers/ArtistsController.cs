using Microsoft.AspNetCore.Mvc;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Controllers;

[Route("api/[controller]")]
public class ArtistsController(IArtistService artistService) : ControllerBase
{
    [HttpPost]
    public async Task<IActionResult> Post([FromBody] Artist artistObject)
    {
        var artistDb = await artistService.AddArtist(artistObject);

        if (artistDb == null)
            return BadRequest();

        return Ok(new { id = artistDb.Id });
    }
}