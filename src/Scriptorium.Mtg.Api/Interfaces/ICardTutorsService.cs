using Scriptorium.Mtg.Models.Tutor;

namespace Scriptorium.Mtg.Api.Interfaces;

public interface ICardTutorsService
{
    CardTutor? GetCardTutorById(Guid id);
    IList<CardTutor> GetCardTutorsByCardName(string name);
}