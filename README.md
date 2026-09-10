# MTG.API

[![.NET](https://img.shields.io/badge/.NET-8.0-512BD4)](https://dotnet.microsoft.com/)
[![EF Core](https://img.shields.io/badge/EF%20Core-8.0-512BD4)](https://learn.microsoft.com/ef/core/)
[![Swagger](https://img.shields.io/badge/docs-OpenAPI-85EA2D)](https://swagger.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-work%20in%20progress-orange)]()

> REST API serving a multilingual Magic: The Gathering card database.
> API REST exposant une base de cartes Magic: The Gathering multilingue.

**🇬🇧 [English](#english) · 🇫🇷 [Français](#français)**

---

## English

### What this is

An ASP.NET Core 8 Web API sitting between the SQL Server database and the two clients of the project:

```
  MTG-Importer  ──POST──▶  ┌──────────┐  ──EF Core──▶  SQL Server
                           │ MTG.API  │
  card-tutor    ──GET───▶  └──────────┘
```

It is the single write path into the database — the importer never touches SQL directly — and the single read path for the front end.

### Architecture

A straightforward layered design, one vertical slice per aggregate:

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

19 controllers, each with a matching interface and service. Services own all EF Core querying; controllers only translate HTTP to service calls. Dependencies are injected through primary constructors (C# 12).

The interesting endpoint is `CardTutorsController`. Rather than making the front end fetch and recompose eight tables, it returns a `CardTutor` — a flattened read model aggregating a card, all its translations, its printings, faces, related cards and rulings in a single response.

### Endpoints

Full interactive documentation is available at `/swagger` when running in Development.

| Route | Verbs | Purpose |
|---|---|---|
| `/api/CardTutors/{id}` | GET | Full aggregated card, all languages |
| `/api/CardTutors/search/{cardName}` | GET | Search cards by English name |
| `/api/Cards` | GET, POST | Oracle-level card data |
| `/api/CardNames`, `/api/CardTexts`, `/api/CardTypelines` | GET, POST | Translation rows |
| `/api/CardFaces`, `/api/CardSets`, `/api/CardSetFaces` | GET, POST | Faces and printings |
| `/api/Sets`, `/api/Artists`, `/api/Colors`, `/api/Rulings` | GET, POST | Reference data |
| `/api/Types`, `/api/Subtypes`, `/api/Supertypes` | GET, POST | Type taxonomy |
| `/api/TypeLanguages`, `/api/SubtypeLanguage`, `/api/SupertypeLanguages` | GET, POST | Type translations |
| `/api/RelatedCards` | GET, POST | Meld, token and combo relationships |

> The `POST` verbs currently exist to serve the importer's ingestion. **Translation editing endpoints (`PUT`/`PATCH`) are not implemented yet** — see the roadmap.

### Getting started

**Prerequisites**

- .NET 8 SDK
- SQL Server (LocalDB, Express or full)
- [MTG.Database.Models](https://github.com/arthur-lagenebre/MTG.Database.Models) cloned as a sibling directory

```
your-workspace/
├── MTG.Database.Models/
└── MTG.API/
```

**Setup**

```bash
git clone https://github.com/arthur-lagenebre/MTG.API.git
cd MTG.API
dotnet restore
```

Set the connection string. Prefer user secrets over editing `appsettings.json`:

```bash
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;"
```

Create the database:

```bash
dotnet ef database update
```

Run:

```bash
dotnet run
```

Swagger UI is then available at `https://localhost:7276/swagger`.

**Populate the database** by running the [MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) against this API.

> ⚠️ **Known limitations:** the CORS policy is pinned to `http://localhost:4200`, and a development connection string is committed in `appsettings.json`. Both are addressed in the roadmap.

### Migrations

```bash
# add a migration
dotnet ef migrations add MigrationName

# apply it
dotnet ef database update
```

Seed data (colours, the base `Card` type and its translations) lives in `MtgDbContext.OnModelCreating`.

### Roadmap

- [ ] Change `DbContext` lifetime from `Singleton` to `Scoped` — `DbContext` is not thread-safe and its change tracker grows unbounded
- [ ] Move the connection string to user secrets / environment variables, make CORS origins configurable
- [ ] Migrate to .NET 10 (LTS) and EF Core 10 — .NET 8 support ends 10 November 2026
- [ ] **Authentication and authorisation** (`UseAuthorization` is currently called with no scheme configured, so it does nothing). Reading must stay open to anonymous users; only writes require an account.
- [ ] **`PUT`/`PATCH` endpoints for translation editing** — the core feature of the project
- [ ] Request DTOs with validation, instead of binding EF entities directly from the request body
- [ ] Pagination on collection endpoints
- [ ] Full-text index on card names to replace the current `Contains` search
- [ ] Integration tests
- [ ] GitHub Actions CI + Docker Compose (API + SQL Server)

### Related repositories

| Repository | Role |
|---|---|
| [MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) | Scryfall ETL feeding this API |
| **MTG.API** | This repository — REST API |
| [MTG.Database.Models](https://github.com/arthur-lagenebre/MTG.Database.Models) | Shared EF Core model |
| [card-tutor](https://github.com/arthur-lagenebre/card-tutor) | Angular front end |

---

## Français

### De quoi s'agit-il

Une Web API ASP.NET Core 8 placée entre la base SQL Server et les deux clients du projet :

```
  MTG-Importer  ──POST──▶  ┌──────────┐  ──EF Core──▶  SQL Server
                           │ MTG.API  │
  card-tutor    ──GET───▶  └──────────┘
```

C'est l'unique chemin d'écriture vers la base — l'importer ne touche jamais SQL directement — et l'unique chemin de lecture pour le front.

### Architecture

Une conception en couches simple, une tranche verticale par agrégat :

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

19 contrôleurs, chacun avec son interface et son service. Les services portent toutes les requêtes EF Core ; les contrôleurs se contentent de traduire le HTTP en appels de service. Les dépendances sont injectées via les constructeurs primaires (C# 12).

L'endpoint le plus intéressant est `CardTutorsController`. Plutôt que d'obliger le front à récupérer et recomposer huit tables, il renvoie un `CardTutor` — un modèle de lecture aplati agrégeant une carte, toutes ses traductions, ses impressions, ses faces, ses cartes liées et ses rulings en une seule réponse.

### Endpoints

La documentation interactive complète est disponible sur `/swagger` en environnement Development.

| Route | Verbes | Rôle |
|---|---|---|
| `/api/CardTutors/{id}` | GET | Carte agrégée complète, toutes langues |
| `/api/CardTutors/search/{cardName}` | GET | Recherche de cartes par nom anglais |
| `/api/Cards` | GET, POST | Données de carte au niveau oracle |
| `/api/CardNames`, `/api/CardTexts`, `/api/CardTypelines` | GET, POST | Lignes de traduction |
| `/api/CardFaces`, `/api/CardSets`, `/api/CardSetFaces` | GET, POST | Faces et impressions |
| `/api/Sets`, `/api/Artists`, `/api/Colors`, `/api/Rulings` | GET, POST | Données de référence |
| `/api/Types`, `/api/Subtypes`, `/api/Supertypes` | GET, POST | Taxonomie des types |
| `/api/TypeLanguages`, `/api/SubtypeLanguage`, `/api/SupertypeLanguages` | GET, POST | Traductions des types |
| `/api/RelatedCards` | GET, POST | Relations meld, token et combo |

> Les verbes `POST` servent aujourd'hui uniquement l'ingestion par l'importer. **Les endpoints d'édition des traductions (`PUT`/`PATCH`) ne sont pas encore implémentés** — voir la feuille de route.

### Démarrage

**Prérequis**

- SDK .NET 8
- SQL Server (LocalDB, Express ou complet)
- [MTG.Database.Models](https://github.com/arthur-lagenebre/MTG.Database.Models) cloné dans un répertoire frère

```
votre-workspace/
├── MTG.Database.Models/
└── MTG.API/
```

**Installation**

```bash
git clone https://github.com/arthur-lagenebre/MTG.API.git
cd MTG.API
dotnet restore
```

Définir la chaîne de connexion. Préférez les user secrets à la modification d'`appsettings.json` :

```bash
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;"
```

Créer la base :

```bash
dotnet ef database update
```

Lancer :

```bash
dotnet run
```

L'interface Swagger est alors disponible sur `https://localhost:7276/swagger`.

**Peupler la base** en exécutant l'[MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) contre cette API.

> ⚠️ **Limitations connues :** la politique CORS est figée sur `http://localhost:4200`, et une chaîne de connexion de développement est committée dans `appsettings.json`. Les deux points sont traités dans la feuille de route.

### Migrations

```bash
# créer une migration
dotnet ef migrations add NomDeLaMigration

# l'appliquer
dotnet ef database update
```

Les données de seed (couleurs, type `Card` de base et ses traductions) se trouvent dans `MtgDbContext.OnModelCreating`.

### Feuille de route

- [ ] Passer la durée de vie du `DbContext` de `Singleton` à `Scoped` — le `DbContext` n'est pas thread-safe et son change tracker croît sans limite
- [ ] Déplacer la chaîne de connexion vers les user secrets / variables d'environnement, rendre les origines CORS configurables
- [ ] Migrer vers .NET 10 (LTS) et EF Core 10 — le support de .NET 8 s'arrête le 10 novembre 2026
- [ ] **Authentification et autorisation** (`UseAuthorization` est actuellement appelé sans schéma configuré, donc sans effet). La lecture doit rester ouverte aux utilisateurs anonymes ; seule l'écriture exige un compte.
- [ ] **Endpoints `PUT`/`PATCH` d'édition des traductions** — la fonctionnalité centrale du projet
- [ ] DTO d'entrée avec validation, au lieu de lier directement les entités EF depuis le corps de la requête
- [ ] Pagination sur les endpoints de collection
- [ ] Index full-text sur les noms de cartes, en remplacement de la recherche `Contains` actuelle
- [ ] Tests d'intégration
- [ ] CI GitHub Actions + Docker Compose (API + SQL Server)

### Dépôts liés

| Dépôt | Rôle |
|---|---|
| [MTG-Importer](https://github.com/arthur-lagenebre/MTG-Importer) | ETL Scryfall alimentant cette API |
| **MTG.API** | Ce dépôt — API REST |
| [MTG.Database.Models](https://github.com/arthur-lagenebre/MTG.Database.Models) | Modèle EF Core partagé |
| [card-tutor](https://github.com/arthur-lagenebre/card-tutor) | Front Angular |

---

## License / Licence

Code released under the [MIT License](LICENSE).
Code publié sous [licence MIT](LICENSE).

### Fan content disclaimer

This project is unofficial Fan Content permitted under the Wizards of the Coast Fan Content Policy. Not approved or endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. © Wizards of the Coast LLC.

Card data originates from [Scryfall](https://scryfall.com/). Any information obtained from the Scryfall API that is not © Wizards of the Coast LLC is © Scryfall LLC. Scryfall data may not be placed behind a paywall: card data served by this API must remain accessible to anonymous or free accounts. The MIT licence above covers **this repository's source code only** — it does not extend to card data, card names, rules text, artwork or Magic: The Gathering trademarks.

*Ce projet est un contenu de fan non officiel, autorisé au titre de la Fan Content Policy de Wizards of the Coast. Non approuvé ni soutenu par Wizards. Les données Scryfall ne peuvent être placées derrière un paywall : les données de cartes servies par cette API doivent rester accessibles aux comptes anonymes ou gratuits. La licence MIT ci-dessus couvre uniquement le code source de ce dépôt.*
