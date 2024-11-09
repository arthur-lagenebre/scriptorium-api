using MTG.Database.Models.Tutor;

namespace MTG.Api.Interfaces;

public interface ICardTutorsService
{
    Task<IList<CardTutor>> GetCardTutorsByCardName(string name);
}