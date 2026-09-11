# Scriptorium — API

[![.NET](https://img.shields.io/badge/.NET-10.0-512BD4)](https://dotnet.microsoft.com/)
[![EF Core](https://img.shields.io/badge/EF%20Core-10.0-512BD4)](https://learn.microsoft.com/ef/core/)
[![Swagger](https://img.shields.io/badge/docs-OpenAPI-85EA2D)](https://swagger.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-work%20in%20progress-orange)]()

> REST API and data model for community translation of trading card games — starting with Magic: The Gathering.
> API REST et modèle de données pour la traduction communautaire de jeux de cartes à collectionner — en commençant par Magic: The Gathering.

**🇬🇧 [English](#english) · 🇫🇷 [Français](#français)**

---

## English

### The problem

Wizards of the Coast translates Magic cards into a handful of languages, and only keeps the English text up to date. Players in every other language are left with outdated cards, or with none at all.

**Scriptorium** is a platform that lets a community maintain those translations itself. The name comes from the monastic workshops where manuscripts were copied and translated by hand — which is fairly close to what this is.

### What this repository is

An ASP.NET Core 10 Web API sitting between the SQL Server database and the two clients of the project:

```
  scriptorium-importer  ──POST──▶  ┌──────────────────┐  ──EF Core──▶  SQL Server
                                   │  scriptorium-api │
  scriptorium-web       ──GET───▶  └──────────────────┘
```

It is the single write path into the database — the importer never touches SQL directly — and the single read path for the front end.

### Repository layout

```
scriptorium-api/
├── Scriptorium.Mtg.slnx
├── docs/
│   └── DATA-MODEL.md              ← how the schema handles localisation
└── src/
    ├── Scriptorium.Mtg.Api/       ← the web API
    └── Scriptorium.Mtg.Models/    ← EF Core entities
```

The game sits in the namespace on purpose. Magic's data model — mana costs, colour identity, power/toughness, 22 card layouts — is specific to Magic, and a Pokémon or Lorcana model would look nothing like it. What is reusable across games is the *localisation pattern*, not the schema. Keeping `Scriptorium.Mtg.*` leaves room for a `Scriptorium.Pokemon.*` alongside it, without pretending a single generic schema could serve both.

### Architecture

A straightforward layered design, one vertical slice per aggregate:

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

19 controllers, each with a matching interface and service. Services own all EF Core querying; controllers only translate HTTP to service calls. Dependencies are injected through primary constructors.

The interesting endpoint is `CardTutorsController`. Rather than making the front end fetch and recompose eight tables, it returns a `CardTutor` — a flattened read model aggregating a card, all its translations, its printings, faces, related cards and rulings in a single response. *(A "tutor" is the Magic term for a card that searches your library for another one.)*

**The data model is where the real design work is.** Translations are rows rather than columns, so adding a language needs no schema migration. Oracle data is separated from printing data. Type lines are recomposed per language — including their separators, so Japanese and Chinese type lines do not inherit an English convention. See [docs/DATA-MODEL.md](docs/DATA-MODEL.md).

### Endpoints

Full interactive documentation is at `/swagger` when running in Development.

| Route | Verbs | Purpose |
|---|---|---|
| `/api/CardTutors/{id}` | GET | Full aggregated card, all languages |
| `/api/CardTutors/search/{cardName}` | GET | Search cards by English name |
| `/api/Cards` | GET, POST | Oracle-level card data |
| `/api/CardNames`, `/api/CardTexts`, `/api/CardTypelines` | GET, POST | Translation rows |
| `/api/CardFaces`, `/api/CardSet`, `/api/CardSetFaces` | GET, POST | Faces and printings |
| `/api/Sets`, `/api/Artists`, `/api/Colors`, `/api/Rulings` | GET, POST | Reference data |
| `/api/Types`, `/api/Subtypes`, `/api/Supertypes` | GET, POST | Type taxonomy |
| `/api/TypeLanguages`, `/api/SubtypeLanguage`, `/api/SupertypeLanguages` | GET, POST | Type translations |
| `/api/RelatedCards` | GET, POST | Meld, token and combo relationships |

> The `POST` verbs currently exist to serve the importer's ingestion. **Translation editing endpoints (`PUT`/`PATCH`) are not implemented yet** — see the roadmap.

### Getting started

**Prerequisites**

- .NET 10 SDK
- SQL Server (LocalDB, Express or full)

```bash
git clone https://github.com/arthur-lagenebre/scriptorium-api.git
cd scriptorium-api
dotnet restore
```

Set the connection string — prefer user secrets over editing `appsettings.json`:

```bash
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;" --project src/Scriptorium.Mtg.Api
```

Create the database and run:

```bash
dotnet ef database update --project src/Scriptorium.Mtg.Api
dotnet run --project src/Scriptorium.Mtg.Api
```

The listening URL is printed at startup (`http://localhost:5141` by default); Swagger UI is at `/swagger`.

**Populate the database** by running [scriptorium-importer](https://github.com/arthur-lagenebre/scriptorium-importer) against this API.

> ⚠️ **Known limitations:** the CORS policy is pinned to `http://localhost:4200`, and a development connection string is committed in `appsettings.json`. Both are on the roadmap.

### Solution format

The solution uses the SLNX format, the default since .NET 10. Visual Studio only opens `.slnx` files once *Tools → Options → Environment → Preview Features → Use Solution File Persistence Model* is enabled. Rider, VS Code and `dotnet build` handle it out of the box.

### Migrations

```bash
dotnet ef migrations add MigrationName --project src/Scriptorium.Mtg.Api
dotnet ef migrations has-pending-model-changes --project src/Scriptorium.Mtg.Api
dotnet ef database update --project src/Scriptorium.Mtg.Api
```

Seed data (colours, the base `Card` type and its translations) lives in `MtgDbContext.OnModelCreating`. **Seed identifiers must stay hardcoded** — a `Guid.NewGuid()` there makes the model non-deterministic, which EF Core 9+ rejects outright when applying migrations.

### Roadmap

- [ ] Move the connection string to user secrets / environment variables, make CORS origins configurable
- [ ] **Authentication and authorisation** (`UseAuthorization` is currently called with no scheme configured, so it does nothing). Reading must stay open to anonymous users; only writes require an account.
- [ ] **`PUT`/`PATCH` endpoints for translation editing** — the core feature of the project
- [ ] Request DTOs with validation, instead of binding EF entities directly from the request body
- [ ] Auditing fields (`CreatedAt`, `UpdatedAt`, `UpdatedBy`) and a revision history for moderation
- [ ] Pagination on collection endpoints
- [ ] Full-text index on card names to replace the current `Contains` search
- [ ] Integration tests
- [ ] GitHub Actions CI + Docker Compose (API + SQL Server)

### Related repositories

| Repository | Role |
|---|---|
| **scriptorium-api** | This repository — REST API and data model |
| [scriptorium-importer](https://github.com/arthur-lagenebre/scriptorium-importer) | Scryfall ETL feeding this API |
| [scriptorium-web](https://github.com/arthur-lagenebre/scriptorium-web) | Angular front end |

---

## Français

### Le problème

Wizards of the Coast ne traduit les cartes Magic que dans quelques langues, et ne met à jour que la version anglaise. Les joueurs de toutes les autres langues se retrouvent avec des cartes obsolètes, ou sans traduction du tout.

**Scriptorium** est une plateforme permettant à une communauté de maintenir elle-même ces traductions. Le nom vient des ateliers monastiques où les manuscrits étaient copiés et traduits à la main — ce qui n'est pas très loin de ce dont il s'agit ici.

### Ce que contient ce dépôt

Une Web API ASP.NET Core 10 placée entre la base SQL Server et les deux clients du projet :

```
  scriptorium-importer  ──POST──▶  ┌──────────────────┐  ──EF Core──▶  SQL Server
                                   │  scriptorium-api │
  scriptorium-web       ──GET───▶  └──────────────────┘
```

C'est l'unique chemin d'écriture vers la base — l'importer ne touche jamais SQL directement — et l'unique chemin de lecture pour le front.

### Organisation du dépôt

```
scriptorium-api/
├── Scriptorium.Mtg.slnx
├── docs/
│   └── DATA-MODEL.md              ← comment le schéma gère la localisation
└── src/
    ├── Scriptorium.Mtg.Api/       ← l'API web
    └── Scriptorium.Mtg.Models/    ← les entités EF Core
```

Le jeu figure volontairement dans l'espace de noms. Le modèle de données de Magic — coûts de mana, identité colorielle, force/endurance, 22 layouts de cartes — lui est propre, et un modèle Pokémon ou Lorcana ne lui ressemblerait en rien. Ce qui se réutilise d'un jeu à l'autre, c'est le *motif de localisation*, pas le schéma. Conserver `Scriptorium.Mtg.*` laisse la place à un `Scriptorium.Pokemon.*` à côté, sans prétendre qu'un schéma générique unique pourrait servir aux deux.

### Architecture

Une conception en couches simple, une tranche verticale par agrégat :

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

19 contrôleurs, chacun avec son interface et son service. Les services portent toutes les requêtes EF Core ; les contrôleurs se contentent de traduire le HTTP en appels de service. Les dépendances sont injectées via les constructeurs primaires.

L'endpoint le plus intéressant est `CardTutorsController`. Plutôt que d'obliger le front à récupérer et recomposer huit tables, il renvoie un `CardTutor` — un modèle de lecture aplati agrégeant une carte, toutes ses traductions, ses impressions, ses faces, ses cartes liées et ses rulings en une seule réponse. *(En Magic, un « tutor » désigne une carte qui va en chercher une autre dans la bibliothèque.)*

**C'est dans le modèle de données que se trouve le vrai travail de conception.** Les traductions sont des lignes et non des colonnes, si bien qu'ajouter une langue ne demande aucune migration de schéma. Les données oracle sont séparées des données d'impression. Les lignes de type sont recomposées par langue — séparateurs compris, pour que le japonais et le chinois n'héritent pas d'une convention anglaise. Voir [docs/DATA-MODEL.md](docs/DATA-MODEL.md).

### Endpoints

La documentation interactive complète est sur `/swagger` en environnement Development.

| Route | Verbes | Rôle |
|---|---|---|
| `/api/CardTutors/{id}` | GET | Carte agrégée complète, toutes langues |
| `/api/CardTutors/search/{cardName}` | GET | Recherche de cartes par nom anglais |
| `/api/Cards` | GET, POST | Données de carte au niveau oracle |
| `/api/CardNames`, `/api/CardTexts`, `/api/CardTypelines` | GET, POST | Lignes de traduction |
| `/api/CardFaces`, `/api/CardSet`, `/api/CardSetFaces` | GET, POST | Faces et impressions |
| `/api/Sets`, `/api/Artists`, `/api/Colors`, `/api/Rulings` | GET, POST | Données de référence |
| `/api/Types`, `/api/Subtypes`, `/api/Supertypes` | GET, POST | Taxonomie des types |
| `/api/TypeLanguages`, `/api/SubtypeLanguage`, `/api/SupertypeLanguages` | GET, POST | Traductions des types |
| `/api/RelatedCards` | GET, POST | Relations meld, token et combo |

> Les verbes `POST` servent aujourd'hui uniquement l'ingestion par l'importer. **Les endpoints d'édition des traductions (`PUT`/`PATCH`) ne sont pas encore implémentés** — voir la feuille de route.

### Démarrage

**Prérequis**

- SDK .NET 10
- SQL Server (LocalDB, Express ou complet)

```bash
git clone https://github.com/arthur-lagenebre/scriptorium-api.git
cd scriptorium-api
dotnet restore
```

Définir la chaîne de connexion — préférez les user secrets à la modification d'`appsettings.json` :

```bash
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;" --project src/Scriptorium.Mtg.Api
```

Créer la base puis lancer :

```bash
dotnet ef database update --project src/Scriptorium.Mtg.Api
dotnet run --project src/Scriptorium.Mtg.Api
```

L'URL d'écoute est affichée au démarrage (`http://localhost:5141` par défaut) ; l'interface Swagger est sur `/swagger`.

**Peupler la base** en exécutant [scriptorium-importer](https://github.com/arthur-lagenebre/scriptorium-importer) contre cette API.

> ⚠️ **Limitations connues :** la politique CORS est figée sur `http://localhost:4200`, et une chaîne de connexion de développement est committée dans `appsettings.json`. Les deux points sont dans la feuille de route.

### Format de solution

La solution utilise le format SLNX, celui par défaut depuis .NET 10. Visual Studio n'ouvre les fichiers `.slnx` qu'une fois l'option *Outils → Options → Environnement → Preview Features → Use Solution File Persistence Model* activée. Rider, VS Code et `dotnet build` les prennent en charge nativement.

### Migrations

```bash
dotnet ef migrations add NomDeLaMigration --project src/Scriptorium.Mtg.Api
dotnet ef migrations has-pending-model-changes --project src/Scriptorium.Mtg.Api
dotnet ef database update --project src/Scriptorium.Mtg.Api
```

Les données de seed (couleurs, type `Card` de base et ses traductions) se trouvent dans `MtgDbContext.OnModelCreating`. **Les identifiants de seed doivent rester codés en dur** : un `Guid.NewGuid()` à cet endroit rend le modèle non déterministe, ce qu'EF Core 9+ refuse catégoriquement au moment d'appliquer une migration.

### Feuille de route

- [ ] Déplacer la chaîne de connexion vers les user secrets / variables d'environnement, rendre les origines CORS configurables
- [ ] **Authentification et autorisation** (`UseAuthorization` est actuellement appelé sans schéma configuré, donc sans effet). La lecture doit rester ouverte aux utilisateurs anonymes ; seule l'écriture exige un compte.
- [ ] **Endpoints `PUT`/`PATCH` d'édition des traductions** — la fonctionnalité centrale du projet
- [ ] DTO d'entrée avec validation, au lieu de lier directement les entités EF depuis le corps de la requête
- [ ] Champs d'audit (`CreatedAt`, `UpdatedAt`, `UpdatedBy`) et historique des révisions pour la modération
- [ ] Pagination sur les endpoints de collection
- [ ] Index full-text sur les noms de cartes, en remplacement de la recherche `Contains` actuelle
- [ ] Tests d'intégration
- [ ] CI GitHub Actions + Docker Compose (API + SQL Server)

### Dépôts liés

| Dépôt | Rôle |
|---|---|
| **scriptorium-api** | Ce dépôt — API REST et modèle de données |
| [scriptorium-importer](https://github.com/arthur-lagenebre/scriptorium-importer) | ETL Scryfall alimentant cette API |
| [scriptorium-web](https://github.com/arthur-lagenebre/scriptorium-web) | Front Angular |

---

## License / Licence

Code released under the [MIT License](LICENSE).
Code publié sous [licence MIT](LICENSE).

### Fan content disclaimer

This project is unofficial Fan Content permitted under the Wizards of the Coast Fan Content Policy. Not approved or endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. © Wizards of the Coast LLC.

Card data originates from [Scryfall](https://scryfall.com/). Any information obtained from the Scryfall API that is not © Wizards of the Coast LLC is © Scryfall LLC. Scryfall data may not be placed behind a paywall: card data served by this API must remain accessible to anonymous or free accounts. The MIT licence above covers **this repository's source code only** — it does not extend to card data, card names, rules text, artwork or Magic: The Gathering trademarks.

*Ce projet est un contenu de fan non officiel, autorisé au titre de la Fan Content Policy de Wizards of the Coast. Non approuvé ni soutenu par Wizards. Les données Scryfall ne peuvent être placées derrière un paywall : les données de cartes servies par cette API doivent rester accessibles aux comptes anonymes ou gratuits. La licence MIT ci-dessus couvre uniquement le code source de ce dépôt.*
