DECLARE @SubtypeId UNIQUEIDENTIFIER;

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Plant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Plant')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Plante')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Egg'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Egg')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Œuf')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jellyfish'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Jellyfish')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Méduse')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'God'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'God')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dieu')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Background'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Background')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Passé')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'C''tan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'C''tan')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'C''tan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sculpture'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sculpture')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sculpture')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Performer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Performer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Interprète')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Construct'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Construct')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Construction')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spirit'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Spirit')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Esprit')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Frog'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Frog')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Grenouille')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Brushwagg'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Brushwagg')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Bosquérisson')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Crocodile'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Crocodile')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Crocodile')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wizard'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wizard')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sorcier')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jackal'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Jackal')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chacal')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Atog'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Atog')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Atog')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bear'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bear')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ours')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vehicle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Vehicle')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Véhicule')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Robot'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Robot')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Robot')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Siren'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Siren')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sirène')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Monger'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Monger')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Négociant')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pilot'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Pilot')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pilote')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Oko'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Oko')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Oko')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Licid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Licid')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Litique')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Minsc'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Minsc')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Minsc')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Raccoon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Raccoon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Raton-laveur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Graveborn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Graveborn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Désencavé')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Phelddagrif'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Phelddagrif')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Phelddagrif')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Samut'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Samut')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Samut')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mole'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mole')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Taupe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tyranid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tyranid')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tyranide')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hippo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hippo')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Hippopotame')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Guff'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Guff')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Guff')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Island'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Island')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Île')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sorin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sorin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sorin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tyvar'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tyvar')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tyvar')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ashiok'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ashiok')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ashiok')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shard'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Shard')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Éclat')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Szat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Szat')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Szat')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hag'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hag')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mégère')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Garruk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Garruk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Garruk')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Phyrexian'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Phyrexian')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Phyrexian')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Class'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Class')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Classe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mystic'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mystic')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mystique')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lizard'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lizard')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lézard')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Goat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Goat')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chèvre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shaman'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Shaman')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Shamane')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Inquisitor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Inquisitor')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Inquisiteur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Svega'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Svega')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Svega')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nightstalker'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nightstalker')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chassenuit')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bard'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bard')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Barde')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hamster'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hamster')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Hamster')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tentacle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tentacle')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tentacule')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Clue'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Clue')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Indice')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Forest'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Forest')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Forêt')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Otter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Otter')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Loutre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Powerstone'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Powerstone')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lithoforce')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Reveler'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Reveler')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Révélateur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Trap'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Trap')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Piège')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wombat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wombat')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Wombat')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cartouche'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cartouche')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Cartouche')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rabbit'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rabbit')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lapin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Triskelavite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Triskelavite')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Triskelavite')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Druid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Druid')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Druide')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Narset'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Narset')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Narset')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Duck'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Duck')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Canard')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Noble'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Noble')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Noble')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Naga'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Naga')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Naga')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Samurai'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Samurai')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Samouraï')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Head'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Head')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tête')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dinosaur'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dinosaur')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dinosaure')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kirin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kirin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kirin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sivitri'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sivitri')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sivitri')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dihada'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dihada')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dihada')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Octopus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Octopus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pieuvre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Troll'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Troll')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Troll')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Primarch'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Primarch')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Primarque')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Flagbearer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Flagbearer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Enseigne')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tamiyo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tamiyo')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tamiyo')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Xenagos'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Xenagos')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Xenagos')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Germ'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Germ')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Germe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Human'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Human')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Humain')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Adventure'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Adventure')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Aventure')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nautilus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nautilus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nautile')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shrine'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Shrine')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Reliquaire')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Automaton'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Automaton')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Automaton')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Soltari'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Soltari')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Soltari')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Curse'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Curse')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Malédiction')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Detective'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Detective')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Détective')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Merfolk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Merfolk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ondin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fractal'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Fractal')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Fractale')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mordenkainen'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mordenkainen')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mordenkainen')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Astartes'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Astartes')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Astartes')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kor')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kor')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Inzerva'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Inzerva')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Inzerva')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nymph'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nymph')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nymphe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Survivor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Survivor')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Survivant')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Avatar'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Avatar')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Avatar')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Drake'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Drake')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Drakôn')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Possum'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Possum')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Opossum')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Room'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Room')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pièce')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Zubera'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Zubera')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Zubera')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Karn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Karn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Karn')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Homunculus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Homunculus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Homoncule')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Squid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Squid')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Calamar')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dog'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dog')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chien')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vampire'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Vampire')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Vampire')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Juggernaut'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Juggernaut')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Djaggernaut')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Coward'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Coward')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Couard')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tetravite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tetravite')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tétravite')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mouse'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mouse')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Souris')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Barbarian'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Barbarian')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Barbare')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mount'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mount')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Monture')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Berserker'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Berserker')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Berserker')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Reflection'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Reflection')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Reflet')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ugin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ugin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ugin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Metathran'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Metathran')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Métathran')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chorus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Chorus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Refrain')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Coyote'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Coyote')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Coyote')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Blood'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Blood')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sang')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Elk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Élan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Teddy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Teddy')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Peluche')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aurochs'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Aurochs')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Aurochs')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Employee'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Employee')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Employé')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gorgon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gorgon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gorgonoïde')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Halfling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Halfling')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Halfelin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tower'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tower')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tour')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Thalakos'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Thalakos')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Thalakos')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Leech'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Leech')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sangsue')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Surrakar'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Surrakar')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Surrakar')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wurm'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wurm')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Guivre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Insect'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Insect')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Insecte')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chandra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Chandra')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chandra')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Orc'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Orc')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Orque')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Carrier'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Carrier')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Propagateur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mutant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mutant')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mutant')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Demigod'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Demigod')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Demi-dieu')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Davriel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Davriel')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Davriel')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Drone'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Drone')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Drone')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Slug'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Slug')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Limace')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Liliana'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Liliana')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Liliana')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elspeth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Elspeth')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Elspeth')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Eye'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Eye')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Œil')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Serf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Serf')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Serf')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Yanling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Yanling')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Yanling')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Porcupine'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Porcupine')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Porc-épic')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Role'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Role')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Rôle')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jeska'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Jeska')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Jeska')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Contraption'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Contraption')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Appareil')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kobold'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kobold')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kobold')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Servo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Servo')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Servo')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bolas'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bolas')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Bolas')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wrenn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wrenn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Wrenn')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Necron'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Necron')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nécron')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dack'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dack')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dack')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fish'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Fish')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Poisson')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fungus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Fungus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Fongus')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fox'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Fox')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Renard')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scout'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Scout')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Éclaireur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lammasu'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lammasu')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lamassu')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Werewolf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Werewolf')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Loup-garou')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Balloon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Balloon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ballon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scorpion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Scorpion')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Scorpion')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cleric'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cleric')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Clerc')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Monk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Monk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Moine')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ox'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ox')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Bovidé')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gith'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gith')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gith')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Time Lord'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Time Lord')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Time Lord')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Arlinn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Arlinn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Arlinn')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Snake'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Snake')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Serpent')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sarkhan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sarkhan')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sarkhan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chimera'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Chimera')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chimère')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Custodes'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Custodes')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Custodes')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tasha'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tasha')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tasha')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Saproling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Saproling')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Saprobionte')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aminatou'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Aminatou')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Aminatou')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Case'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Case')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Affaire')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gnome'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gnome')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gnome')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Artificer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Artificer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Artificier')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Calix'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Calix')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Calix')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dovin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dovin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dovin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lesson'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lesson')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Leçon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Master'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Master')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Maître')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nahiri'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nahiri')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nahiri')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Faerie'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Faerie')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Peuple fée')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Oyster'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Oyster')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Huître')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Estrid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Estrid')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Estrid')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Daretti'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Daretti')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Daretti')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kasmina'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kasmina')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kasmina')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Eldrazi'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Eldrazi')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Eldrazi')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mine'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mine')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mine')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Volver'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Volver')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Évolien')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'B.O.B.'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'B.O.B.')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'B.O.B.')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pest'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Pest')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Parasite')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sponge'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sponge')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Éponge')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ogre'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ogre')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ogre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tiefling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tiefling')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tieffelin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Blinkmoth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Blinkmoth')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Scintimite')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Horse'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Horse')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Cheval')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fortification'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Fortification')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Fortification')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Windgrace'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Windgrace')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Windgrace')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Toy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Toy')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Jouet')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hornet'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hornet')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Frelon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lair'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lair')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Repaire')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Specter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Specter')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Spectre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rat')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Rat')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Warlock'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Warlock')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Psychagogue')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Basri'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Basri')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Basri')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Glimmer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Glimmer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nitescence')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Armadillo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Armadillo')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tatou')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tezzeret'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tezzeret')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tezzeret')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nomad'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nomad')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nomade')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Abian'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Abian')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Abian')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gargoyle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gargoyle')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gargouille')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Weird'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Weird')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Anomalie')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Elf')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Elfe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Treasure'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Treasure')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Trésor')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Guest'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Guest')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Invité')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Trilobite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Trilobite')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Trilobite')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Phoenix'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Phoenix')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Phénix')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Archon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Archon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Archonte')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mercenary'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mercenary')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mercenaire')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lamia'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lamia')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lamie')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pentavite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Pentavite')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pentavite')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Archer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Archer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Archer')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Advisor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Advisor')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Conseiller')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Weasel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Weasel')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Belette')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wasp'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wasp')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Guêpe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Slith'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Slith')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Slith')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ellywick'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ellywick')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ellywick')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mountain'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mountain')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Montagne')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Thopter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Thopter')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mécanoptère')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Food'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Food')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nourriture')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Citizen'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Citizen')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Citoyen')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rebel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rebel')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Rebelle')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sphinx'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sphinx')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sphinx')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rhino'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rhino')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Rhinocéros')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Centaur'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Centaur')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Centaure')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mite')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Puce')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Quintorius'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Quintorius')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Quintorius')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Equipment'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Equipment')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Equipement')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pangolin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Pangolin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pangolin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Spy')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Espion')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Myr'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Myr')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Myr')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wall'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wall')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hellion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hellion')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Monstruosité')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dryad'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nixilis'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nixilis')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nixilis')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dungeon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dungeon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Donjon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gamer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gamer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Joueur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Freyalise'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Freyalise')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Freyalise')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elephant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Elephant')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Éléphant')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Starfish'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Starfish')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Étoile de mer')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Orb'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Orb')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Orbe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scarecrow'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Scarecrow')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Épouvantail')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Yanggu'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Yanggu')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Yanggu')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Grist'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Grist')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Grist')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nephilim'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nephilim')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nephilim')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spike'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Spike')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Epix')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cyberman'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cyberman')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Cyberman')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ajani'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ajani')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ajani')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Badger'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Badger')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Blaireau')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rune'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rune')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Rune')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Splinter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Splinter')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dissident')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hyena'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hyena')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Hyène')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Clown'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Clown')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Clown')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Squirrel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Squirrel')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Écureuil')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bahamut'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bahamut')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Bahamut')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Swamp'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Swamp')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Marais')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Efreet'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Efreet')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Éfrit')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gnoll'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gnoll')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gnoll')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Minotaur'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Minotaur')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Minotaure')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Camel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Camel')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chameau')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vivien'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Vivien')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Vivien')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aura'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Aura')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Aura')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Leviathan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Leviathan')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Léviathan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Power-Plant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Power-Plant')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Centrale énergétique')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Skeleton'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Skeleton')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Squelette')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Homarid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Homarid')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Homaride')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ouphe'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ouphe')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Orphe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Angel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Angel')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ange')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Whale'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Whale')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Baleine')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Satyr'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Satyr')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Satyre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beaver'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Beaver')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Castor')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rukh'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rukh')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Roc')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rowan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rowan')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Rowan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bat')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chauve-souris')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nissa'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nissa')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nissa')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spawn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Spawn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Engeance')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ninja'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ninja')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ninja')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Junk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Junk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Bric-à-brac')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cloud'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cloud')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nuage')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gold'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gold')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Or')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chicken'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Chicken')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Poulet')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Illusion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Illusion')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Illusion')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Koth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Koth')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Koth')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lukka'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lukka')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lukka')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kithkin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kithkin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sangami')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Map'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Map')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Carte')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tibalt'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Tibalt')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tibalt')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ally'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ally')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Allié')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dragon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dragon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dragon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Angrath'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Angrath')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Angrath')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ferret'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ferret')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Furet')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pegasus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Pegasus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pégase')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Inkling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Inkling')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Encrelin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dakkon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dakkon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dakkon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Snail'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Snail')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Escargot')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beholder'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Beholder')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tyrannœil')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Brainiac'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Brainiac')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Inhumaniac')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Scion')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Scion')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Locus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Locus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Site')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Turtle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Turtle')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Tortue terrestre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Will'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Will')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Will')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Skunk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Skunk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Moufette')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sand'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sand')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sable')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vraska'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Vraska')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Vraska')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dwarf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dwarf')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Nain')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Teyo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Teyo')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Teyo')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Manticore'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Manticore')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Manticore')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dreadnought'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dreadnought')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dreadnought')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Plains'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Plains')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Plaine')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Minion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Minion')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mignon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Peasant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Peasant')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Paysan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Demon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Demon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Démon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Thrull'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Thrull')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Srâne')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Warrior'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Warrior')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Guerrier')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Assembly-Worker'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Assembly-Worker')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ouvrier spécialisé')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Attraction'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Attraction')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Attraction')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gideon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gideon')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gideon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Caribou'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Caribou')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Caribou')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spellshaper'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Spellshaper')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sortisan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beeble'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Beeble')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Bibule')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Goblin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Goblin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gobelin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sphere'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sphere')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sphère')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shapeshifter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Shapeshifter')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Changeforme')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Antelope'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Antelope')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Antilope')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Domri'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Domri')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Domri')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elder'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Elder')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ancêtre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Synth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Synth')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Synthétique')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cat')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chat')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Imp'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Imp')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Diablotin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kraken'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kraken')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kraken')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Doctor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Doctor')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Docteur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Boar'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Boar')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sanglier')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Saheeli'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Saheeli')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Saheeli')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Niko'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Niko')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Niko')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Deb'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Deb')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Deb')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Venser'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Venser')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Venser')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Deserter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Deserter')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Déserteur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Zariel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Zariel')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Zariel')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Processor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Processor')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Convertisseur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Horror'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Horror')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Horreur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spider'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Spider')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Araignée')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nightmare'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Nightmare')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Cauchemar')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elemental'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Elemental')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Élémental')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Teferi'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Teferi')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Téfeiri')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dauthi'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dauthi')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dauthi')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hippogriff'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hippogriff')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Hippogriffe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Djinn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Djinn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Djinn')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bird'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bird')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Oiseau')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Varmint'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Varmint')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Vermine')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Devil'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Devil')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Diable')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ersta'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ersta')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ersta')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vedalken'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Vedalken')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Vedalken')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beast'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Beast')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Bête')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Siege'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Siege')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Siège')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Luxior'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Luxior')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Luxior')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kiora'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kiora')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kiora')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Incubator'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Incubator')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Incubateur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Capybara'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Capybara')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Capybara')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Crab'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Crab')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Crabe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Monkey'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Monkey')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Singe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bobblehead'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bobblehead')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Figurine')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elminster'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Elminster')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Elminster')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sloth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sloth')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Paresseux')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ral'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ral')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ral')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Camarid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Camarid')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Camaride')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Army'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Army')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Armée')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Worm'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Worm')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ver')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kavu'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kavu')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kavru')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Giant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Giant')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Géant')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gate'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gate')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Porte')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wanderer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wanderer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Vagabonde')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scientist'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Scientist')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Scientifique')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Urza'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Urza')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Urza')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ooze'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ooze')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Limon')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Child'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Child')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Enfant')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Masticore'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Masticore')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Masticore')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aetherborn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Aetherborn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Éthérien')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Basilisk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Basilisk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Basilic')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hydra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hydra')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Hydre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cyclops'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cyclops')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Cyclope')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hero'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Hero')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Héro')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sliver'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sliver')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Slivoïde')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Harpy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Harpy')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Harpie')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lolth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lolth')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lolth')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cockatrice'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cockatrice')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Cocatrix')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kaito'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kaito')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kaito')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vronos'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Vronos')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Vronos')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Serra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Serra')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Serra')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dalek'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Dalek')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Dalek')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ranger'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ranger')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ranger')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Urzan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Urzan')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Urzan')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Azra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Azra')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Azra')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Griffin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Griffin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Griffin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Treefolk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Treefolk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Sylvin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Walrus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Walrus')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Morse')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ape'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Ape')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Grand singe')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bringer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Bringer')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Annonciateur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mongoose'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Mongoose')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mangouste')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Alien'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Alien')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Extraterrestre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rogue'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rogue')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gredin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shade'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Shade')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Ombre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gremlin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Gremlin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gremlin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Incarnation'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Incarnation')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Incarnation')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Praetor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Praetor')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Praetor')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Serpent'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Serpent')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Grand serpent')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Salamander'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Salamander')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Salamandre')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Comet'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Comet')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Comet')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sable'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sable')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jaya'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Jaya')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Jaya')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Prism'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Prism')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Prisme')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kaya'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Kaya')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Kaya')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jace'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Jace')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Jace')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shark'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Shark')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Requin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Moonfolk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Moonfolk')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lunaréen')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Saga'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Saga')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Saga')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lhurgoyf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Lhurgoyf')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Lhurgoyf')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rigger'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Rigger')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Gréeur')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Golem'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Golem')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Golem')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Orgg'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Orgg')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Orgg')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Soldier'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Soldier')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Soldat')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Arcane'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Arcane')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Arcane')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Yeti'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Yeti')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Yeti')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wolverine'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wolverine')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Glouton')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cave'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Cave')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Caverne')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Zombie'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Zombie')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Zombie')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Desert'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Desert')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Désert')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sheep'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Sheep')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Mouton')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Assassin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Assassin')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Assassin')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wraith'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wraith')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Apparition')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jared'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Jared')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Jared')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Noggle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Noggle')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Neugle')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wolf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Wolf')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Loup')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Urza''s'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Urza''s')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'D''Urza')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Huatli'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Huatli')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Huatli')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Knight'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Knight')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Chevalier')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pirate'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Pirate')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pirate')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Unicorn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Unicorn')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Licorne')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pincher'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Pincher')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Pinceur')