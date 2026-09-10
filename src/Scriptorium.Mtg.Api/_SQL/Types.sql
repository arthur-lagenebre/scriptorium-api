DECLARE @TypeId UNIQUEIDENTIFIER;

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Plane'

INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Plane');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Plan');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Scheme'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Scheme');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Machination');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Battle'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Battle');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Bataille');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Creature'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Creature');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Créature');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Enchantment'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Enchantment');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Enchantement');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Dungeon'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Dungeon');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', '');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Emblem'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Emblem');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Emblème');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Vanguard'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Vanguard');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Vanguard');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Conspiracy'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Conspiracy');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Conspiration');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Planeswalker'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Planeswalker');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Planeswalker');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Artifact'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Artifact');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Artefact');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Phenomenon'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Phenomenon');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Phénomène');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Land'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Land');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Terrain');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Hero'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Hero');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Héroïque');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Kindred'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Kindred');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'De clan');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Instant'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Instant');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Éphémère');

SELECT @TypeId = Id FROM [Types] WHERE DefaultName = 'Sorcery'
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'en', 'Sorcery');
INSERT INTO [TypeLanguages] ([Id], [TypeId], [Language], [Name], [Order]) VALUES (NEWID(), @TypeId, 'fr', 'Rituel');