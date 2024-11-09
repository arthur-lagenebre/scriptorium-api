using Microsoft.EntityFrameworkCore;
using MTG.Api.DatabaseContext;
using MTG.Api.Interfaces;
using MTG.Database.Models.Card;

namespace MTG.Api.Services;

public class CardTextService : ICardTextService
{
    private readonly MTGDbContext _db;

    public CardTextService(MTGDbContext db)
    {
        _db = db;
    }

    public async Task<CardText?> AddCardText(CardText cardText)
    {
        var cardTextDb = await _db.CardTexts.FirstOrDefaultAsync(x => x.CardId.Equals(cardText.CardId) && x.FaceId.Equals(cardText.FaceId) && x.Language.Equals(cardText.Language));

        if (cardTextDb != null)
            return cardTextDb;

        _db.CardTexts.Add(cardText);

        var result = await _db.SaveChangesAsync();

        return result >= 0 ? cardText : null;
    }

    public async Task<IList<CardText>> GetCardTextsByCardId(Guid cardId)
    {
        return await _db.CardTexts.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}