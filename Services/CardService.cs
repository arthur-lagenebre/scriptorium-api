using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardService : ICardService
{
    private readonly MTGDbContext _db;

    public CardService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<Card?> AddCard(Card card)
    {
        var cardDb = await _db.Cards.FirstOrDefaultAsync(x => x.OracleId.Equals(card.OracleId));

        if (cardDb != null)
            return cardDb;

        _db.Cards.Add(card);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? card : null;
    }

    public async Task<Card?> GetCardByOracleId(Guid oracleId)
    {
        return await _db.Cards.FirstOrDefaultAsync(x => x.OracleId == oracleId);
    }
}