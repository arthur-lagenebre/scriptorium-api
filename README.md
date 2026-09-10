# MTG.API

[![.NET](https://img.shields.io/badge/.NET-10.0-512BD4)](https://dotnet.microsoft.com/)
[![EF Core](https://img.shields.io/badge/EF%20Core-10.0-512BD4)](https://learn.microsoft.com/ef/core/)
[![Swagger](https://img.shields.io/badge/docs-OpenAPI-85EA2D)](https://swagger.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-work%20in%20progress-orange)]()

> REST API and data model for a multilingual Magic: The Gathering card database.
> API REST et modèle de données d'une base de cartes Magic: The Gathering multilingue.

**🇬🇧 [English](#english) · 🇫🇷 [Français](#français)**

---

## English

### What this is

An ASP.NET Core 10 Web API sitting between the SQL Server database and the two clients of the project:

```
  MTG-Importer  ──POST──▶  ┌──────────┐  ──EF Core──▶  SQL Server
                           │ MTG.API  │
  card-tutor    ──GET───▶  └──────────┘
```

It is the single write path into the database — the importer never touches SQL directly — and the single read path for the front end.

The project exists because Wizards of the Coast only translates Magic cards into a handful of languages, and only keeps the English text up to date. The goal is to let a community maintain translations in any language.

### Repository layout

```
MTG.API/
├── MTG.Api.slnx
├── docs/
│   └── DATA-MODEL.md          ← how the schema handles localisation
└── src/
    ├── MTG.Api/               ← the web API
    └── MTG.Database.Models/   ← EF Core entities
```

`MTG.Database.Models` used to live in its own repository; it was merged here with its history, since the API is its only consumer.

### Architecture

A straightforward layered design, one vertical slice per aggregate:

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

19 controllers, each with a matching interface and service. Services own all EF Core querying; controllers only translate HTTP to service calls. Dependencies are injected through primary constructors.

The interesting endpoint is `CardTutorsController`. Rather than making the front end fetch and recompose eight tables, it returns a `CardTutor` — a flattened read model aggregating a card, all its translations, its printings, faces, related cards and rulings in a single response.

**The data model is where the real design work is.** Translations are rows rather than columns, oracle data is separated from printing data, and type lines are recomposed per language — including their separators, so Japanese and Chinese type lines do not inherit an English convention. See [docs/DATA-MODEL.md](docs/DATA-MODEL.md).

### Endpoints

Full interactive documentation is available at `/swagger` when running in Development.

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

**Setup**

```bash
git clone https://github.com/arthur-lagenebre/MTG.API.git
cd MTG.API
dotnet restore
```

Set the connection string. Prefer user secrets over editing `appsettings.json`:

```bash
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;" --project src/MTG.Api
```

Create the database and run:

```bash
dotnet ef database update --project src/MTG.Api
dotnet run --project src/MTG.Api
```

The listening URL is printed at startup (`http://localhost:5141` by default); Swagger UI is at `/swagger`.

**Populate the database** by running the [MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) against this API.

> ⚠️ **Known limitations:** the CORS policy is pinned to `http://localhost:4200`, and a development connection string is committed in `appsettings.json`. Both are addressed in the roadmap.

### Solution format

The solution uses the SLNX format, which is the default since .NET 10. Visual Studio only opens `.slnx` files once *Tools → Options → Environment → Preview Features → Use Solution File Persistence Model* is enabled. Rider and VS Code work with it out of the box, as does `dotnet build`.

### Migrations

```bash
dotnet ef migrations add MigrationName --project src/MTG.Api
dotnet ef migrations has-pending-model-changes --project src/MTG.Api
dotnet ef database update --project src/MTG.Api
```

Seed data (colours, the base `Card` type and its translations) lives in `MtgDbContext.OnModelCreating`.

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
| [MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) | Scryfall ETL feeding this API |
| **MTG.API** | This repository — REST API and data model |
| [card-tutor](https://github.com/arthur-lagenebre/card-tutor) | Angular front end |

---

## Français

### De quoi s'agit-il

Une Web API ASP.NET Core 10 placée entre la base SQL Server et les deux clients du projet :

```
  MTG-Importer  ──POST──▶  ┌──────────┐  ──EF Core──▶  SQL Server
                           │ MTG.API  │
  card-tutor    ──GET───▶  └──────────┘
```

C'est l'unique chemin d'écriture vers la base — l'importer ne touche jamais SQL directement — et l'unique chemin de lecture pour le front.

Le projet existe parce que Wizards of the Coast ne traduit les cartes Magic que dans quelques langues, et ne met à jour que la version anglaise. L'objectif est de permettre à une communauté de maintenir des traductions dans n'importe quelle langue.

### Organisation du dépôt

```
MTG.API/
├── MTG.Api.slnx
├── docs/
│   └── DATA-MODEL.md          ← comment le schéma gère la localisation
└── src/
    ├── MTG.Api/               ← l'API web
    └── MTG.Database.Models/   ← les entités EF Core
```

`MTG.Database.Models` avait son propre dépôt ; il a été fusionné ici avec son historique, l'API en étant le seul consommateur.

### Architecture

Une conception en couches simple, une tranche verticale par agrégat :

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

19 contrôleurs, chacun avec son interface et son service. Les services portent toutes les requêtes EF Core ; les contrôleurs se contentent de traduire le HTTP en appels de service. Les dépendances sont injectées via les constructeurs primaires.

L'endpoint le plus intéressant est `CardTutorsController`. Plutôt que d'obliger le front à récupérer et recomposer huit tables, il renvoie un `CardTutor` — un modèle de lecture aplati agrégeant une carte, toutes ses traductions, ses impressions, ses faces, ses cartes liées et ses rulings en une seule réponse.

**C'est dans le modèle de données que se trouve le vrai travail de conception.** Les traductions sont des lignes et non des colonnes, les données oracle sont séparées des données d'impression, et les lignes de type sont recomposées par langue — séparateurs compris, pour que le japonais et le chinois n'héritent pas d'une convention anglaise. Voir [docs/DATA-MODEL.md](docs/DATA-MODEL.md).

### Endpoints

La documentation interactive complète est disponible sur `/swagger` en environnement Development.

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

**Installation**

```bash
git clone https://github.com/arthur-lagenebre/MTG.API.git
cd MTG.API
dotnet restore
```

Définir la chaîne de connexion. Préférez les user secrets à la modification d'`appsettings.json` :

```bash
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;" --project src/MTG.Api
```

Créer la base puis lancer :

```bash
dotnet ef database update --project src/MTG.Api
dotnet run --project src/MTG.Api
```

L'URL d'écoute est affichée au démarrage (`http://localhost:5141` par défaut) ; l'interface Swagger est sur `/swagger`.

**Peupler la base** en exécutant l'[MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) contre cette API.

> ⚠️ **Limitations connues :** la politique CORS est figée sur `http://localhost:4200`, et une chaîne de connexion de développement est committée dans `appsettings.json`. Les deux points sont traités dans la feuille de route.

### Format de solution

La solution utilise le format SLNX, celui par défaut depuis .NET 10. Visual Studio n'ouvre les fichiers `.slnx` qu'une fois l'option *Outils → Options → Environnement → Preview Features → Use Solution File Persistence Model* activée. Rider et VS Code les prennent en charge nativement, tout comme `dotnet build`.

### Migrations

```bash
dotnet ef migrations add NomDeLaMigration --project src/MTG.Api
dotnet ef migrations has-pending-model-changes --project src/MTG.Api
dotnet ef database update --project src/MTG.Api
```

Les données de seed (couleurs, type `Card` de base et ses traductions) se trouvent dans `MtgDbContext.OnModelCreating`.

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
| [MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) | ETL Scryfall alimentant cette API |
| **MTG.API** | Ce dépôt — API REST et modèle de données |
| [card-tutor](https://github.com/arthur-lagenebre/card-tutor) | Front Angular |

---

## License / Licence

Code released under the [MIT License](LICENSE).
Code publié sous [licence MIT](LICENSE).

### Fan content disclaimer

This project is unofficial Fan Content permitted under the Wizards of the Coast Fan Content Policy. Not approved or endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. © Wizards of the Coast LLC.

Card data originates from [Scryfall](https://scryfall.com/). Any information obtained from the Scryfall API that is not © Wizards of the Coast LLC is © Scryfall LLC. Scryfall data may not be placed behind a paywall: card data served by this API must remain accessible to anonymous or free accounts. The MIT licence above covers **this repository's source code only** — it does not extend to card data, card names, rules text, artwork or Magic: The Gathering trademarks.

*Ce projet est un contenu de fan non officiel, autorisé au titre de la Fan Content Policy de Wizards of the Coast. Non approuvé ni soutenu par Wizards. Les données Scryfall ne peuvent être placées derrière un paywall : les données de cartes servies par cette API doivent rester accessibles aux comptes anonymes ou gratuits. La licence MIT ci-dessus couvre uniquement le code source de ce dépôt.*
