using Microsoft.EntityFrameworkCore;
using Scriptorium.Mtg.Api.DatabaseContext;
using Scriptorium.Mtg.Api.Interfaces;
using Scriptorium.Mtg.Models.Card;

namespace Scriptorium.Mtg.Api.Services;

public class CardService(MtgDbContext db) : ICardService
{
    public async Task<Card?> AddCard(Card card)
    {
        var cardDb = await db.Cards.FirstOrDefaultAsync(x => x.Id.Equals(card.Id));

        if (cardDb != null)
            return cardDb;

        db.Cards.Add(card);
        var result = await db.SaveChangesAsync();

        return result >= 0 ? card : null;
    }

    public async Task<Card?> GetCardById(Guid id)
    {
        return await db.Cards.Include(x => x.CardNames)
                              .Include(x => x.CardTexts)
                              .Include(x => x.CardFaces)
                              .Include(x => x.CardSets)
                              .Include(x => x.CardTypelines)
                              .Include(x => x.RelatedCards)
                              .Include(x => x.Rulings)
                              .FirstOrDefaultAsync(x => x.Id == id);
    }
}