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

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Soltari'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Curse'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Detective'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Merfolk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fractal'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mordenkainen'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Astartes'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Inzerva'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nymph'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Survivor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Avatar'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Drake'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Possum'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Room'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Zubera'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Karn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Homunculus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Squid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dog'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vampire'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Juggernaut'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Coward'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tetravite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mouse'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Barbarian'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mount'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Berserker'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Reflection'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ugin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Metathran'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chorus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Coyote'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Blood'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Teddy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aurochs'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Employee'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gorgon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Halfling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tower'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Thalakos'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Leech'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Surrakar'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wurm'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Insect'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chandra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Orc'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Carrier'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mutant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Demigod'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Davriel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Drone'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Slug'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Liliana'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elspeth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Eye'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Serf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Yanling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Porcupine'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Role'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jeska'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Contraption'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kobold'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Servo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bolas'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wrenn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Necron'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dack'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fish'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fungus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fox'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scout'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lammasu'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Werewolf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Balloon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scorpion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cleric'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Monk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ox'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gith'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Time Lord'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Arlinn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Snake'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sarkhan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chimera'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Custodes'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tasha'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Saproling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aminatou'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Case'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gnome'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Artificer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Calix'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dovin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lesson'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Master'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nahiri'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Faerie'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Oyster'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Estrid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Daretti'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kasmina'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Eldrazi'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mine'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Volver'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'B.O.B.'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pest'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sponge'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ogre'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tiefling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Blinkmoth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Horse'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Fortification'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Windgrace'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Toy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hornet'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lair'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Specter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Warlock'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Basri'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Glimmer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Armadillo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tezzeret'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nomad'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Abian'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', 'Abian')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', 'Abian')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gargoyle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Weird'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Treasure'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Guest'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Trilobite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Phoenix'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Archon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mercenary'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lamia'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pentavite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Archer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Advisor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Weasel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wasp'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Slith'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ellywick'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mountain'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Thopter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Food'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Citizen'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rebel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sphinx'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rhino'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Centaur'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mite'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Quintorius'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Equipment'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pangolin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Myr'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wall'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hellion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dryad'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nixilis'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dungeon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gamer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Freyalise'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elephant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Starfish'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Orb'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scarecrow'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Yanggu'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Grist'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nephilim'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spike'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cyberman'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ajani'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Badger'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rune'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Splinter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hyena'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Clown'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Squirrel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bahamut'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Swamp'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Efreet'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gnoll'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Minotaur'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Camel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vivien'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aura'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Leviathan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Power-Plant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Skeleton'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Homarid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ouphe'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Angel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Whale'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Satyr'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beaver'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rukh'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rowan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nissa'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spawn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ninja'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Junk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cloud'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gold'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Chicken'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Illusion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Koth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lukka'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kithkin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Map'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Tibalt'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ally'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dragon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Angrath'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ferret'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pegasus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Inkling'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dakkon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Snail'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beholder'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Brainiac'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Locus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Turtle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Will'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Skunk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sand'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vraska'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dwarf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Teyo'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Manticore'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dreadnought'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Plains'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Minion'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Peasant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Demon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Thrull'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Warrior'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Assembly-Worker'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Attraction'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gideon'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Caribou'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spellshaper'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beeble'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Goblin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sphere'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shapeshifter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Antelope'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Domri'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elder'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Synth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cat'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Imp'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kraken'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Doctor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Boar'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Saheeli'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Niko'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Deb'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Venser'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Deserter'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Zariel'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Processor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Horror'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Spider'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Nightmare'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elemental'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Teferi'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dauthi'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hippogriff'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Djinn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bird'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Varmint'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Devil'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ersta'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vedalken'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Beast'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Siege'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Luxior'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kiora'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Incubator'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Capybara'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Crab'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Monkey'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bobblehead'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Elminster'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sloth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ral'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Camarid'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Army'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Worm'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kavu'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Giant'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gate'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wanderer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Scientist'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Urza'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ooze'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Child'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Masticore'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Aetherborn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Basilisk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hydra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cyclops'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Hero'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sliver'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Harpy'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lolth'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cockatrice'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kaito'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Vronos'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Serra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Dalek'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ranger'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Urzan'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Azra'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Griffin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Treefolk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Walrus'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Ape'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Bringer'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Mongoose'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Alien'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rogue'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shade'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Gremlin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Incarnation'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Praetor'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Serpent'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Salamander'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Comet'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sable'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jaya'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Prism'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Kaya'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jace'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Shark'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Moonfolk'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Saga'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Lhurgoyf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Rigger'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Golem'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Orgg'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Soldier'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Arcane'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Yeti'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wolverine'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Cave'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Zombie'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Desert'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Sheep'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Assassin'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wraith'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Jared'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Noggle'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Wolf'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Urza''s'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Huatli'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Knight'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pirate'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Unicorn'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')

SELECT @SubtypeId = Id FROM [Subtypes] WHERE DefaultName = 'Pincher'

INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'en', '')
INSERT INTO [SubtypeLanguages] ([Id], [SubtypeId], [Language], [Name]) VALUES (NEWID(), @SubtypeId, 'fr', '')