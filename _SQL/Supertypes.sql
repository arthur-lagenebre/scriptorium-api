DECLARE @SupertypeId UNIQUEIDENTIFIER;

SELECT @SupertypeId = Id FROM [Supertypes] WHERE DefaultName = 'World'

INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'en', 'World')
INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'fr', 'Du monde')

SELECT @SupertypeId = Id FROM [Supertypes] WHERE DefaultName = 'Snow'

INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'en', 'Snow')
INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'fr', 'Neigeux/se"')

SELECT @SupertypeId = Id FROM [Supertypes] WHERE DefaultName = 'Basic'

INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'en', 'Basic')
INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'fr', 'De base')

SELECT @SupertypeId = Id FROM [Supertypes] WHERE DefaultName = 'Token'

INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'en', 'Token')
INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'fr', 'Jeton')

SELECT @SupertypeId = Id FROM [Supertypes] WHERE DefaultName = 'Elite'

INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'en', 'Elite')
INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'fr', 'D''élite')

SELECT @SupertypeId = Id FROM [Supertypes] WHERE DefaultName = 'Ongoing'

INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'en', 'Ongoing')
INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'fr', 'Continue')

SELECT @SupertypeId = Id FROM [Supertypes] WHERE DefaultName = 'Legendary'

INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'en', 'Legendary')
INSERT INTO [SupertypeLanguages] ([Id], [SupertypeId], [Language], [Name], [Order]) VALUES(NEWID(), @SupertypeId, 'fr', 'Légendaire')