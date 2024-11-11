using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardTypelineService : ICardTypelineService
{
    private readonly MTGDbContext _db;

    public CardTypelineService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardTypeline?> AddCardTypeline(CardTypeline cardTypeline)
    {
        var cardTypelineDb = await _db.CardTypelines.FirstOrDefaultAsync(x => x.CardId.Equals(cardTypeline.CardId) && x.FaceId.Equals(cardTypeline.FaceId) && x.Language.Equals(cardTypeline.Language));

        if (cardTypelineDb != null)
            return cardTypelineDb;

        _db.CardTypelines.Add(cardTypeline);
        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardTypeline : null;
    }

    public async Task<IList<CardTypeline>> GetCardTypelinesByCardId(Guid id)
    {
        return await _db.CardTypelines.Where(x => x.CardId.Equals(id)).ToListAsync();
    }
}
