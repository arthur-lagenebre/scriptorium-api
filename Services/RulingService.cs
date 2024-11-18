using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models;

namespace MTG.Api.Services;

public class RulingService : IRulingService
{
    private readonly MTGDbContext _db;

    public RulingService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<Ruling?> AddRuling(Ruling ruling)
    {
        var rulingDb = await _db.Rulings.FirstOrDefaultAsync(x => x.CardId.Equals(ruling.CardId));

        if (rulingDb != null)
            return rulingDb;

        _db.Rulings.Add(ruling);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? ruling : null;
    }

    public async Task<IList<Ruling>> GetRulingsByCardId(Guid cardId)
    {
        return await _db.Rulings.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}