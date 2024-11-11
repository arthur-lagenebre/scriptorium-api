namespace MTG.Database.Models.Tutor;

public record SetTutor(string Name, string Code, int Order, string CollectorNumber, string Rarity, List<string> ImageUrls, List<FlavorTutor> Flavors);
