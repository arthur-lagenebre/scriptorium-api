namespace MTG.Database.Models.Tutor;

public record CardTutor(string Id, List<LanguageTutor> Names, List<LanguageTutor> Typelines, List<LanguageTutor> Texts, List<RulingTutor> Rulings, string ManaCost, List<SetTutor> Sets, List<string> Languages, List<CardFaceTutor> CardFaces, List<RelatedCardTutor> RelatedCards, string? Power, string? Toughness, string? Loyalty, string? HandModifier, string? LifeModifier);
