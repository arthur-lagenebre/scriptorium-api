namespace MTG.Database.Models.Tutor;

public record CardSetTutor(int FaceId, string Artist, List<FlavorTutor> Tutors);
