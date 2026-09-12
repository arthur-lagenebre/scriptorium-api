# Data model · Modèle de données

> How the Scriptorium schema treats localisation as a first-class axis, and how community edits are recorded.
> Comment le schéma Scriptorium traite la localisation comme un axe de première classe, et comment les contributions sont enregistrées.

**🇬🇧 [English](#english) · 🇫🇷 [Français](#français)**

Entities live in `src/Scriptorium.Mtg.Models/`. The `DbContext` and migrations live in `src/Scriptorium.Mtg.Api/`.

---

## English

### The constraint that shapes everything

Wizards of the Coast prints Magic cards in a limited set of languages and only keeps the English text current. A database designed around English, with translations bolted on, inherits that limitation. Three decisions push against it.

#### 1. Translations are rows, not columns

`CardName`, `CardText` and `CardTypeline` are separate tables, each keyed by `(CardId, FaceId, Language, Value)`.

```
Card (1) ──< CardName     (CardId, FaceId, Language, Value)
         ──< CardText     (CardId, FaceId, Language, Value)
         ──< CardTypeline (CardId, FaceId, Language, Value)
```

Adding Welsh, Catalan or Esperanto means inserting rows. No schema migration, no column per language, no nullable sprawl, no ceiling on how many languages the platform can hold. Querying a card in one language is a filter on `Language`; listing the languages a card exists in is a `DISTINCT` on the same column.

`Language` is `varchar(3)`, matching Scryfall's codes — `en`, `fr`, `ja`, `zhs`, `zht`.

`FaceId` is an integer rather than a foreign key. Face 0 is the front, face 1 the back, and so on. A single-faced card has one row per language with `FaceId = 0`; a transform card has two.

Each of these three tables also carries `UpdatedAt` and `UpdatedByUserId`, both null on rows produced by the importer — which is how an untouched official value is told apart from a community-edited one.

#### 2. Oracle data is separated from printing data

A card has two kinds of truth. What is true of the card itself — mana cost, colours, power and toughness — and what is true of one particular printing — which set, which collector number, which rarity, which artwork.

| Table | Holds | Example |
|---|---|---|
| `Card` | Oracle truth | Mana cost, colours, layout, P/T, loyalty, keywords |
| `CardFace` | Oracle truth, per face | Mana cost and P/T of one face of a multi-face card |
| `CardSet` | One printing | Set, collector number, rarity, image URLs |
| `CardSetFace` | One printing, one face | Artists |
| `CardSetFaceFlavor` | One printing, one face, one language | Flavour text, flavour name |

A card reprinted twenty times has one `Card` row and twenty `CardSet` rows. Its oracle text is stored once per language, not once per printing — exactly the deduplication a translation platform needs, since translators should edit the card, not each of its twenty appearances.

Flavour text sits at the deepest level because it genuinely varies along all three axes: a reprint can change it, a double-faced card has one per face, and each language has its own.

#### 3. Type lines are composed, not stored

This is the part most Magic databases get wrong.

English writes `Legendary Creature — Human Wizard`: supertypes, then types separated by spaces, then an em dash, then subtypes separated by spaces. That convention is not universal. Japanese and Chinese do not space and punctuate the same way, and hardcoding `" — "` produces type lines that look wrong to a native reader.

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

Composing a localised type line is then a matter of joining translated pieces with that language's separators, rather than assuming English punctuation and substituting words into it.

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

A Golgari card is `8 + 32 = 40`. A five-colour card is `62`. This fits a colour identity in one indexed integer column and makes "every card that is at least blue" a bitwise test rather than a join.

`Card` carries three: `Colors` (the card's own colours), `ColorsIdentity` (everything relevant to Commander deck legality, including mana symbols in the rules text), and `ColorsIndicator` (the colour dot printed on cards with no mana cost).

### Contribution

Three tables support community editing.

**`User`** — one row per external login, keyed by `(Provider, ProviderUserId)` with a unique index. No password is stored: authentication is delegated to Google or GitHub. `IsBlocked` stops a contributor from writing without erasing their past contributions.

The same person signing in with Google and with GitHub currently produces two accounts. Linking them is a genuine feature, and one that creates account-takeover holes if done carelessly — hence its absence for now.

**`UserRole`** — role grants, optionally scoped to a language. The absence of any row means *plain contributor*: every authenticated account may edit, and only elevated roles are recorded. `Language` is nullable, `null` meaning global scope, and the unique index on `(UserId, Role, Language)` is **deliberately unfiltered** so SQL Server treats nulls as equal and prevents granting the same global role twice.

Scoping by language is what makes this table worth having: someone fluent in Japanese can moderate Japanese without gaining any authority over Spanish.

**`TranslationRevision`** — an immutable log of every change.

| Column | Role |
|---|---|
| `TargetType` | Which translation table: `CardName`, `CardText`, `CardTypeline`, `CardSetFaceFlavor` |
| `CardId`, `FaceId`, `Language` | What was edited |
| `CardSetFaceId` | Only for flavour text, which hangs off a printing rather than a card |
| `PreviousValue`, `NewValue` | Null respectively on creation and deletion |
| `UserId`, `CreatedAt`, `Comment` | Who, when, and optionally why |
| `Status` | `Applied`, `Reverted`, plus `Pending` and `Rejected` held in reserve |

A revision identifies its target by `(TargetType, CardId, FaceId, Language)` rather than by a row id. A row id would be null when the revision *creates* the translation — which is the majority case on this platform, since the point is to add languages that do not exist yet. `CardSetFaceId` completes the addressing for flavour text alone.

Revisions are never modified, apart from `Status`. Correcting a translation appends one; reverting appends another whose value is the one that preceded the revision being undone, and marks that revision `Reverted`. Nothing is ever deleted, which is what makes the history trustworthy and rollback a special case of ordinary writing.

`Status` already carries `Pending` and `Rejected` even though the platform edits directly today. Introducing a review step later becomes a matter of writing a different status, not of migrating a schema.

### Read models

The `Tutor/` folder holds records — `CardTutor`, `CardSetTutor`, `LanguageTutor`, `FlavorTutor`, `RulingTutor`, `RelatedCardTutor`, `CardFaceTutor` — that are **not database tables**. They are the flattened projections the API returns, assembled by `CardTutorsService`.

The split matters: the write model is normalised so a translation is edited in exactly one place, while the read model is denormalised so displaying a card costs one request instead of eight.

### Known gaps

- **No concurrency control.** Two contributors editing the same translation at once resolve last-write-wins, with no warning. A `rowversion` token on the translation tables would surface the conflict.
- **No batch identifier on revisions.** One `PUT` touching six fields writes six independent revisions, so undoing that contribution takes six reverts.
- **Language codes are not validated.** `Language` accepts any three characters; nothing enforces the Scryfall set.
- **No anonymisation path.** Immutable revisions mean a deletion request cannot simply erase a contributor's rows. The usual answer is to blank `DisplayName`, `Email` and `AvatarUrl` while keeping `UserId` and the revisions — worth implementing before the site opens publicly.
- **Seed identifiers must stay hardcoded.** `MtgDbContext.OnModelCreating` seeds colours and the base `Card` type with fixed GUIDs. A `Guid.NewGuid()` there makes the model change on every build, which EF Core 9+ rejects when applying migrations.

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

Ajouter le gallois, le catalan ou l'espéranto revient à insérer des lignes. Aucune migration de schéma, aucune colonne par langue, aucune prolifération de colonnes nullables, aucun plafond au nombre de langues. Interroger une carte dans une langue est un filtre sur `Language` ; lister les langues disponibles est un `DISTINCT` sur la même colonne.

`Language` est un `varchar(3)`, aligné sur les codes de Scryfall — `en`, `fr`, `ja`, `zhs`, `zht`.

`FaceId` est un entier plutôt qu'une clé étrangère. La face 0 est le recto, la face 1 le verso, et ainsi de suite. Une carte à face unique a une ligne par langue avec `FaceId = 0` ; une carte transform en a deux.

Ces trois tables portent également `UpdatedAt` et `UpdatedByUserId`, tous deux nuls sur les lignes produites par l'importer — c'est ainsi qu'une valeur officielle jamais retouchée se distingue d'une valeur éditée par la communauté.

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

Une carte Golgari vaut `8 + 32 = 40`. Une carte des cinq couleurs vaut `62`. Cela fait tenir une identité colorielle dans une seule colonne entière indexable, et transforme « toutes les cartes au moins bleues » en un test bit à bit plutôt qu'en une jointure.

`Card` en porte trois : `Colors` (les couleurs propres de la carte), `ColorsIdentity` (tout ce qui compte pour la légalité d'un deck Commander, symboles de mana du texte de règles compris) et `ColorsIndicator` (la pastille de couleur imprimée sur les cartes sans coût de mana).

### La contribution

Trois tables portent l'édition communautaire.

**`User`** — une ligne par connexion externe, identifiée par `(Provider, ProviderUserId)` avec un index unique. Aucun mot de passe n'est stocké : l'authentification est déléguée à Google ou GitHub. `IsBlocked` empêche un contributeur d'écrire sans effacer ses contributions passées.

Une même personne se connectant avec Google puis avec GitHub produit aujourd'hui deux comptes. Les rattacher est une vraie fonctionnalité, et une fonctionnalité qui ouvre des failles de prise de contrôle de compte si elle est bâclée — d'où son absence pour l'instant.

**`UserRole`** — attributions de rôles, éventuellement limitées à une langue. L'absence de ligne signifie *contributeur simple* : tout compte authentifié peut éditer, et seuls les rôles élevés sont enregistrés. `Language` est nullable, `null` valant portée globale, et l'index unique sur `(UserId, Role, Language)` est **volontairement non filtré** pour que SQL Server traite les valeurs nulles comme égales et interdise d'attribuer deux fois le même rôle global.

La portée par langue est ce qui rend cette table utile : quelqu'un qui maîtrise le japonais peut modérer le japonais sans acquérir le moindre pouvoir sur l'espagnol.

**`TranslationRevision`** — journal immuable de chaque modification.

| Colonne | Rôle |
|---|---|
| `TargetType` | Quelle table de traduction : `CardName`, `CardText`, `CardTypeline`, `CardSetFaceFlavor` |
| `CardId`, `FaceId`, `Language` | Ce qui a été modifié |
| `CardSetFaceId` | Uniquement pour le texte d'ambiance, rattaché à une impression et non à une carte |
| `PreviousValue`, `NewValue` | Nuls respectivement lors d'une création et d'une suppression |
| `UserId`, `CreatedAt`, `Comment` | Qui, quand, et éventuellement pourquoi |
| `Status` | `Applied`, `Reverted`, plus `Pending` et `Rejected` tenus en réserve |

Une révision désigne sa cible par `(TargetType, CardId, FaceId, Language)` plutôt que par un identifiant de ligne. Celui-ci serait nul lorsque la révision *crée* la traduction — soit le cas majoritaire sur cette plateforme, puisque l'objectif est d'ajouter des langues qui n'existent pas encore. `CardSetFaceId` complète ce repérage pour le seul texte d'ambiance.

Les révisions ne sont jamais modifiées, `Status` excepté. Corriger une traduction en ajoute une ; annuler en ajoute une autre dont la valeur est celle qui précédait la révision défaite, et marque cette dernière `Reverted`. Rien n'est jamais supprimé, ce qui rend l'historique digne de confiance et fait du retour arrière un cas particulier de l'écriture ordinaire.

`Status` porte déjà `Pending` et `Rejected` alors que la plateforme édite directement aujourd'hui. Introduire une étape de relecture plus tard reviendra à écrire un statut différent, pas à migrer un schéma.

### Modèles de lecture

Le dossier `Tutor/` contient des records — `CardTutor`, `CardSetTutor`, `LanguageTutor`, `FlavorTutor`, `RulingTutor`, `RelatedCardTutor`, `CardFaceTutor` — qui ne sont **pas des tables**. Ce sont les projections aplaties que renvoie l'API, assemblées par `CardTutorsService`.

La séparation a un sens : le modèle d'écriture est normalisé pour qu'une traduction ne s'édite qu'à un seul endroit, tandis que le modèle de lecture est dénormalisé pour qu'afficher une carte coûte une requête au lieu de huit.

### Manques connus

- **Aucun contrôle de concurrence.** Deux contributeurs éditant la même traduction en même temps se résolvent au dernier arrivé, sans le moindre avertissement. Un jeton `rowversion` sur les tables de traduction ferait apparaître le conflit.
- **Aucun identifiant de lot sur les révisions.** Un `PUT` touchant six champs écrit six révisions indépendantes ; défaire cette contribution demande donc six annulations.
- **Les codes de langue ne sont pas validés.** `Language` accepte n'importe quels trois caractères ; rien n'impose le jeu de codes Scryfall.
- **Aucun chemin d'anonymisation.** L'immuabilité des révisions interdit d'effacer purement et simplement les lignes d'un contributeur qui le demanderait. La réponse usuelle consiste à vider `DisplayName`, `Email` et `AvatarUrl` tout en conservant `UserId` et les révisions — à implémenter avant l'ouverture publique du site.
- **Les identifiants de seed doivent rester codés en dur.** `MtgDbContext.OnModelCreating` alimente les couleurs et le type `Card` de base avec des GUID fixes. Un `Guid.NewGuid()` à cet endroit rend le modèle différent à chaque compilation, ce qu'EF Core 9+ refuse au moment d'appliquer une migration.

---

← [Back to the README](../README.md) · [Retour au README](../README.md)
