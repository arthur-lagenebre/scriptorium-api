using MTG.Database.Models.Tutor;

namespace MTG.Api.Interfaces;

public interface ICardTutorsService
{
    CardTutor? GetCardTutorById(Guid id);
    IList<CardTutor> GetCardTutorsByCardName(string name);
}