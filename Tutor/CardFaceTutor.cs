namespace MTG.Database.Models.Tutor;

public record CardFaceTutor(int FaceId, string ManaCost, List<LanguageTutor> Names, List<LanguageTutor> Typelines, List<LanguageTutor> Texts, string? Power, string? Toughness, string? Loyalty, int? Defense);