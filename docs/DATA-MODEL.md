# Data model · Modèle de données

> How the Scriptorium schema treats localisation as a first-class axis.
> Comment le schéma Scriptorium traite la localisation comme un axe de première classe.

**🇬🇧 [English](#english) · 🇫🇷 [Français](#français)**

Entities live in `src/Scriptorium.Mtg.Models/`. The `DbContext` and migrations live in `src/Scriptorium.Mtg.Api/`.

---

## English

### The constraint that shapes everything

Wizards of the Coast prints Magic cards in a limited set of languages and only keeps the English text current. A database designed around English, with translations bolted on, inherits that limitation. Three decisions push against it.

#### 1. Translations are rows, not columns

`CardName`, `CardText` and `CardTypeline` are separate tables, each keyed by `(CardId, FaceId, Language, Value)`.

```
Card (1) ──< CardName   (CardId, FaceId, Language, Value)
         ──< CardText   (CardId, FaceId, Language, Value)
         ──< CardTypeline (CardId, FaceId, Language, Value)
```

Adding Welsh, Catalan or Esperanto means inserting rows. No schema migration, no column per language, no nullable sprawl, and no ceiling on how many languages the platform can hold. Querying a card in one language is a filter on `Language`; querying the languages a card exists in is a `DISTINCT` on the same column.

`Language` is `varchar(3)`, matching Scryfall's codes — `en`, `fr`, `ja`, `zhs`, `zht`.

`FaceId` is an integer rather than a foreign key. Face 0 is the front, face 1 the back, and so on. A single-faced card has one row per language with `FaceId = 0`; a transform card has two.

#### 2. Oracle data is separated from printing data

A card has two kinds of truth. What is true of the card itself — its mana cost, colours, power and toughness — and what is true of one particular printing — which set, which collector number, which rarity, which artwork.

| Table | Holds | Example |
|---|---|---|
| `Card` | Oracle truth | Mana cost, colours, layout, P/T, loyalty, keywords |
| `CardFace` | Oracle truth, per face | Mana cost and P/T of one face of a multi-face card |
| `CardSet` | One printing | Set, collector number, rarity, image URLs |
| `CardSetFace` | One printing, one face | Artists |
| `CardSetFaceFlavor` | One printing, one face, one language | Flavour text, flavour name |

A card reprinted twenty times has one `Card` row and twenty `CardSet` rows. Its oracle text is stored once per language, not once per printing — which is exactly the deduplication a translation platform needs, since translators should edit the card, not each of its twenty appearances.

Flavour text sits at the deepest level because it genuinely varies along all three axes: a reprint can change the flavour text, a double-faced card has one per face, and each language has its own.

#### 3. Type lines are composed, not stored

This is the part most Magic databases get wrong.

English writes `Legendary Creature — Human Wizard`: supertypes, then types, separated by spaces, then an em dash, then subtypes separated by spaces. That convention is not universal. Japanese and Chinese do not space and punctuate the same way, and hardcoding `" — "` produces type lines that look wrong to a native reader.

So the taxonomy is stored in pieces, each with its own translation table:

```
Type      ──< TypeLanguage      (TypeId, Language, Name)
Subtype   ──< SubtypeLanguage   (SubtypeId, Language, Name)
Supertype ──< SupertypeLanguage (SupertypeId, Language, Name)
```

And a `Typeline` table stores **the punctuation of each language**:

| Column | Role |
|---|---|
| `Language` | The language these separators apply to |
| `SeparatorType` | Between two types |
| `SeparatorSubtype` | Between two subtypes |
| `SeparatorTypeSubtype` | Between the type block and the subtype block |

Composing a localised type line is then a matter of joining the translated pieces with that language's separators, rather than assuming English punctuation and substituting words into it.

`Subtype` carries an extra `TypeCard` column, because Magic's subtypes are scoped to a type: *Aura* is an enchantment subtype, *Equipment* an artifact subtype, *Human* a creature subtype. The same word can legitimately appear under two types.

### Colours as a bitmask

`Color` is a reference table seeded with six rows, and card colours are stored as an integer bitmask on `Card` and `CardFace`.

| Bit | Colour |
|---|---|
| 1 | None (colourless) |
| 2 | W — White |
| 4 | U — Blue |
| 8 | B — Black |
| 16 | R — Red |
| 32 | G — Green |

A Golgari card is `8 + 32 = 40`. A five-colour card is `62`. This fits a colour identity in one indexed integer column and makes "every card that is at least blue" a bitwise test rather than a join against a colour-per-card table.

`Card` carries three of them: `Colors` (the card's own colours), `ColorsIdentity` (everything relevant to Commander deck legality, including mana symbols in the rules text), and `ColorsIndicator` (the colour dot printed on cards with no mana cost).

### The rest

| Table | Role |
|---|---|
| `Set` | A Magic set: code, name, type, release date, block, parent set |
| `Artist` | Illustrators, referenced from `CardSetFace.ArtistsId` |
| `Ruling` | Official clarifications, per card and per language |
| `RelatedCard` | Links to meld results, tokens and combo pieces, by name and component |
| `Color` | Colour reference table |

### Read models

The `Tutor/` folder holds records — `CardTutor`, `CardSetTutor`, `LanguageTutor`, `FlavorTutor`, `RulingTutor`, `RelatedCardTutor`, `CardFaceTutor` — that are **not database tables**. They are the flattened projections the API returns, assembled by `CardTutorsService`.

The split matters: the write model is normalised so that a translation is edited in exactly one place, while the read model is denormalised so that displaying a card costs one request instead of eight.

### Known gaps

- **No auditing.** Nothing records who changed a translation, or when. Collaborative editing needs `CreatedAt`, `UpdatedAt` and `UpdatedBy` on the translation tables.
- **No revision history.** A wiki without history cannot be moderated, and cannot be rolled back after vandalism.
- **Seed identifiers must stay hardcoded.** `MtgDbContext.OnModelCreating` seeds colours and the base `Card` type with fixed GUIDs. A `Guid.NewGuid()` there makes the model change on every build, which EF Core 9+ rejects when applying migrations.
- **Language codes are not validated.** `Language` accepts any three characters; nothing enforces the Scryfall set.

---

## Français

### La contrainte qui structure tout

Wizards of the Coast imprime les cartes Magic dans un nombre limité de langues et ne maintient à jour que le texte anglais. Une base conçue autour de l'anglais, avec des traductions greffées ensuite, hérite de cette limitation. Trois décisions s'y opposent.

#### 1. Les traductions sont des lignes, pas des colonnes

`CardName`, `CardText` et `CardTypeline` sont des tables séparées, portant chacune `(CardId, FaceId, Language, Value)`.

```
Card (1) ──< CardName     (CardId, FaceId, Language, Value)
         ──< CardText     (CardId, FaceId, Language, Value)
         ──< CardTypeline (CardId, FaceId, Language, Value)
```

Ajouter le gallois, le catalan ou l'espéranto revient à insérer des lignes. Aucune migration de schéma, aucune colonne par langue, aucune prolifération de colonnes nullables, et aucun plafond au nombre de langues que la plateforme peut accueillir. Interroger une carte dans une langue est un filtre sur `Language` ; connaître les langues disponibles pour une carte est un `DISTINCT` sur la même colonne.

`Language` est un `varchar(3)`, aligné sur les codes de Scryfall — `en`, `fr`, `ja`, `zhs`, `zht`.

`FaceId` est un entier plutôt qu'une clé étrangère. La face 0 est le recto, la face 1 le verso, et ainsi de suite. Une carte à face unique a une ligne par langue avec `FaceId = 0` ; une carte transform en a deux.

#### 2. Les données oracle sont séparées des données d'impression

Une carte porte deux sortes de vérités. Ce qui est vrai de la carte elle-même — coût de mana, couleurs, force et endurance — et ce qui est vrai d'une impression donnée — quelle édition, quel numéro de collection, quelle rareté, quelle illustration.

| Table | Contient | Exemple |
|---|---|---|
| `Card` | Vérité oracle | Coût de mana, couleurs, layout, F/E, loyauté, mots-clés |
| `CardFace` | Vérité oracle, par face | Coût de mana et F/E d'une face d'une carte multi-faces |
| `CardSet` | Une impression | Édition, numéro de collection, rareté, URL des images |
| `CardSetFace` | Une impression, une face | Artistes |
| `CardSetFaceFlavor` | Une impression, une face, une langue | Texte d'ambiance, nom d'ambiance |

Une carte rééditée vingt fois a une ligne `Card` et vingt lignes `CardSet`. Son texte oracle est stocké une fois par langue, et non une fois par impression — soit exactement la déduplication qu'exige une plateforme de traduction, puisque les traducteurs doivent éditer la carte, pas chacune de ses vingt apparitions.

Le texte d'ambiance se situe au niveau le plus profond parce qu'il varie réellement selon les trois axes : une réédition peut le modifier, une carte double face en a un par face, et chaque langue a le sien.

#### 3. Les lignes de type sont composées, pas stockées

C'est le point que la plupart des bases Magic ratent.

L'anglais écrit `Legendary Creature — Human Wizard` : les supertypes, puis les types séparés par des espaces, puis un tiret cadratin, puis les sous-types séparés par des espaces. Cette convention n'est pas universelle. Le japonais et le chinois n'espacent ni ne ponctuent de la même façon, et figer `" — "` produit des lignes de type qui sonnent faux pour un lecteur natif.

La taxonomie est donc stockée en morceaux, chacun avec sa table de traductions :

```
Type      ──< TypeLanguage      (TypeId, Language, Name)
Subtype   ──< SubtypeLanguage   (SubtypeId, Language, Name)
Supertype ──< SupertypeLanguage (SupertypeId, Language, Name)
```

Et une table `Typeline` stocke **la ponctuation propre à chaque langue** :

| Colonne | Rôle |
|---|---|
| `Language` | La langue à laquelle ces séparateurs s'appliquent |
| `SeparatorType` | Entre deux types |
| `SeparatorSubtype` | Entre deux sous-types |
| `SeparatorTypeSubtype` | Entre le bloc des types et celui des sous-types |

Composer une ligne de type localisée revient alors à assembler les morceaux traduits avec les séparateurs de la langue, au lieu de supposer une ponctuation anglaise dans laquelle on substituerait des mots.

`Subtype` porte une colonne supplémentaire `TypeCard`, parce que les sous-types Magic sont rattachés à un type : *Aura* est un sous-type d'enchantement, *Équipement* un sous-type d'artefact, *Humain* un sous-type de créature. Un même mot peut légitimement apparaître sous deux types.

### Les couleurs en masque de bits

`Color` est une table de référence alimentée de six lignes, et les couleurs des cartes sont stockées en masque de bits entier sur `Card` et `CardFace`.

| Bit | Couleur |
|---|---|
| 1 | Aucune (incolore) |
| 2 | W — Blanc |
| 4 | U — Bleu |
| 8 | B — Noir |
| 16 | R — Rouge |
| 32 | G — Vert |

Une carte Golgari vaut `8 + 32 = 40`. Une carte des cinq couleurs vaut `62`. Cela fait tenir une identité colorielle dans une seule colonne entière indexable, et transforme « toutes les cartes au moins bleues » en un test bit à bit plutôt qu'en une jointure sur une table couleur-par-carte.

`Card` en porte trois : `Colors` (les couleurs propres de la carte), `ColorsIdentity` (tout ce qui compte pour la légalité d'un deck Commander, symboles de mana du texte de règles compris) et `ColorsIndicator` (la pastille de couleur imprimée sur les cartes sans coût de mana).

### Le reste

| Table | Rôle |
|---|---|
| `Set` | Une édition Magic : code, nom, type, date de sortie, bloc, édition parente |
| `Artist` | Les illustrateurs, référencés depuis `CardSetFace.ArtistsId` |
| `Ruling` | Les clarifications officielles, par carte et par langue |
| `RelatedCard` | Liens vers les résultats de meld, les jetons et les pièces de combo, par nom et composant |
| `Color` | Table de référence des couleurs |

### Modèles de lecture

Le dossier `Tutor/` contient des records — `CardTutor`, `CardSetTutor`, `LanguageTutor`, `FlavorTutor`, `RulingTutor`, `RelatedCardTutor`, `CardFaceTutor` — qui ne sont **pas des tables**. Ce sont les projections aplaties que renvoie l'API, assemblées par `CardTutorsService`.

La séparation a un sens : le modèle d'écriture est normalisé pour qu'une traduction ne s'édite qu'à un seul endroit, tandis que le modèle de lecture est dénormalisé pour qu'afficher une carte coûte une requête au lieu de huit.

### Manques connus

- **Aucun audit.** Rien n'enregistre qui a modifié une traduction, ni quand. L'édition collaborative exige `CreatedAt`, `UpdatedAt` et `UpdatedBy` sur les tables de traduction.
- **Aucun historique de révisions.** Un wiki sans historique ne peut être ni modéré, ni restauré après un acte de vandalisme.
- **Les identifiants de seed doivent rester codés en dur.** `MtgDbContext.OnModelCreating` alimente les couleurs et le type `Card` de base avec des GUID fixes. Un `Guid.NewGuid()` à cet endroit rend le modèle différent à chaque compilation, ce qu'EF Core 9+ refuse au moment d'appliquer une migration.
- **Les codes de langue ne sont pas validés.** `Language` accepte n'importe quels trois caractères ; rien n'impose le jeu de codes Scryfall.

---

← [Back to the README](../README.md) · [Retour au README](../README.md)
