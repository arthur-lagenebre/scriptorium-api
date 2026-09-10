using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Services;

public class CardTextService(MtgDbContext db) : ICardTextService
{
    public async Task<CardText?> AddCardText(CardText cardText)
    {
        var cardTextDb = await db.CardTexts.FirstOrDefaultAsync(x => x.CardId.Equals(cardText.CardId) && x.FaceId.Equals(cardText.FaceId) && x.Language.Equals(cardText.Language));

        if (cardTextDb != null)
            return cardTextDb;

        db.CardTexts.Add(cardText);

        var result = await db.SaveChangesAsync();

        return result >= 0 ? cardText : null;
    }

    public async Task<IList<CardText>> GetCardTextsByCardId(Guid cardId)
    {
        return await db.CardTexts.Where(x => x.CardId.Equals(cardId)).ToListAsync();
    }
}