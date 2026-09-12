namespace Scriptorium.Mtg.Models.Card;

public interface ITranslatedValue
{
    Guid Id { get; }
    int FaceId { get; }
    string Language { get; }
    string Value { get; set; }
    DateTime? UpdatedAt { get; set; }
    Guid? UpdatedByUserId { get; set; }
}