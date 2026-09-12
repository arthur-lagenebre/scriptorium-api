# Scriptorium — API

[![build](https://github.com/arthur-lagenebre/scriptorium-api/actions/workflows/build.yml/badge.svg)](https://github.com/arthur-lagenebre/scriptorium-api/actions/workflows/build.yml)
[![.NET](https://img.shields.io/badge/.NET-10.0-512BD4)](https://dotnet.microsoft.com/)
[![EF Core](https://img.shields.io/badge/EF%20Core-10.0-512BD4)](https://learn.microsoft.com/ef/core/)
[![Swagger](https://img.shields.io/badge/docs-OpenAPI-85EA2D)](https://swagger.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

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
                        ──PUT───▶
```

It is the single write path into the database and the single read path for the front end.

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

The game sits in the namespace on purpose. Magic's data model — mana costs, colour identity, power/toughness, 22 card layouts — is specific to Magic, and a Pokémon or Lorcana model would look nothing like it. What is reusable across games is the *localisation pattern*, not the schema. Keeping `Scriptorium.Mtg.*` leaves room for a `Scriptorium.Pokemon.*` alongside it.

### Architecture

One vertical slice per aggregate:

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

Services own all EF Core querying; controllers only translate HTTP to service calls. Dependencies are injected through primary constructors.

`CardTutorsController` returns a `CardTutor` — a flattened read model aggregating a card, all its translations, its printings, faces, related cards and rulings in a single response, so the front end does not recompose eight tables. *(A "tutor" is the Magic term for a card that searches your library for another one.)*

**The data model is where the real design work is.** Translations are rows rather than columns, oracle data is separated from printing data, and type lines are recomposed per language — separators included, so Japanese and Chinese do not inherit English punctuation. See [docs/DATA-MODEL.md](docs/DATA-MODEL.md).

### Authentication

Reading is anonymous, always. Only writes require an account — Scryfall forbids placing card data behind any kind of wall.

**The API is the OAuth client.** The front end redirects to `/api/auth/login/{provider}`, the API exchanges the authorisation code, resolves a local account and issues **its own JWT**. This is not the only possible design, but it is the one that works for both providers: GitHub does not implement OIDC and issues no signed `id_token`, so validating provider tokens directly would have worked for Google only.

Three schemes coexist. A short-lived `External` cookie carries the result of the OAuth handshake and is dropped as soon as the local user is resolved; Google and GitHub write into it; JWT Bearer is the default scheme and the only one that authenticates API calls.

The token comes back to the front end in the **URL fragment** rather than the query string: fragments never reach the server and never land in access logs.

### The contribution model

Direct editing, wiki-style. Any signed-in contributor can edit a translation, the change is live immediately, and the full history is public.

Every change writes a `TranslationRevision` — author, timestamp, previous value, new value, optional comment. Revisions are **immutable**: correcting a translation creates a new one, and reverting writes another rather than deleting anything.

Two rules worth knowing:

- **English is read-only.** It is Wizards' official text, rewritten on every import; community corrections there would be silently overwritten.
- **A null field changes nothing.** Submitting only a card name leaves its rules text untouched, so a partially filled form never erases someone else's work.

`TranslationRevision.Status` already carries `Pending` and `Rejected`, unused today. They exist so a review step can be introduced later without touching the schema.

### Endpoints

Full interactive documentation is at `/swagger` in Development, with a **Authorize** button for pasting a token.

| Route | Verbs | Auth | Purpose |
|---|---|---|---|
| `/api/auth/login/{provider}` | GET | — | Starts the OAuth flow (`google` or `github`) |
| `/api/auth/callback` | GET | — | Provider return; issues the JWT |
| `/api/auth/me` | GET | ✔ | Current profile and roles |
| `/api/cards/{cardId}/translations/{language}` | GET | — | A card's translation in one language |
| `/api/cards/{cardId}/translations/{language}` | PUT | ✔ | Creates or updates that translation |
| `/api/cards/{cardId}/history` | GET | — | Revision history, optionally filtered by language |
| `/api/cards/{cardId}/revert/{revisionId}` | POST | ✔ | Restores the value preceding a revision |
| `/api/CardTutors/{id}` | GET | — | Full aggregated card, all languages |
| `/api/CardTutors/search/{cardName}` | GET | — | Search cards by English name |
| `/api/Cards`, `/api/CardNames`, `/api/CardSet`, … | GET, POST | — | Ingestion and reference data (19 controllers) |

The older `POST` endpoints exist to serve the importer's ingestion; they predate the contribution API and are not the path a human editor should take.

### Getting started

**Prerequisites**

- .NET 10 SDK
- SQL Server (LocalDB, Express or full)
- An OAuth application on Google and/or GitHub, with the callback set to `http://localhost:5141/signin-google` and `http://localhost:5141/signin-github`

```bash
git clone https://github.com/arthur-lagenebre/scriptorium-api.git
cd scriptorium-api
dotnet restore
```

Secrets never go in `appsettings.json`:

```bash
cd src/Scriptorium.Mtg.Api
dotnet user-secrets init
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;"
dotnet user-secrets set "Jwt:Key" "<64 random bytes, base64>"
dotnet user-secrets set "Authentication:Google:ClientId" "…"
dotnet user-secrets set "Authentication:Google:ClientSecret" "…"
dotnet user-secrets set "Authentication:GitHub:ClientId" "…"
dotnet user-secrets set "Authentication:GitHub:ClientSecret" "…"
```

Create the database and run:

```bash
dotnet ef database update --project src/Scriptorium.Mtg.Api
dotnet run --project src/Scriptorium.Mtg.Api
```

The listening URL is printed at startup (`http://localhost:5141` by default). **Populate the database** by running [scriptorium-importer](https://github.com/arthur-lagenebre/scriptorium-importer) against this API.

> ⚠️ **Known limitation:** the CORS policy is pinned to `http://localhost:4200`. Making origins configurable is on the roadmap.

### Solution format

The solution uses SLNX, the default since .NET 10. Visual Studio only opens `.slnx` files once *Tools → Options → Environment → Preview Features → Use Solution File Persistence Model* is enabled. Rider, VS Code and `dotnet build` handle it out of the box.

### Migrations

```bash
dotnet ef migrations add MigrationName --project src/Scriptorium.Mtg.Api
dotnet ef migrations has-pending-model-changes --project src/Scriptorium.Mtg.Api
dotnet ef database update --project src/Scriptorium.Mtg.Api
```

Seed data lives in `MtgDbContext.OnModelCreating`. **Seed identifiers must stay hardcoded** — a `Guid.NewGuid()` there makes the model change on every build, which EF Core 9+ rejects when applying migrations. CI runs `has-pending-model-changes`, so a model edited without its migration fails the build.

### Roadmap

- [ ] Concurrency control on translation writes — two simultaneous edits currently resolve last-write-wins, silently
- [ ] Batch identifier on revisions, so one contribution can be reverted in a single action rather than field by field
- [ ] Moderation: blocking a contributor works, but nothing surfaces suspicious edits
- [ ] Account anonymisation, to honour deletion requests without tearing holes in the history
- [ ] Linking a Google and a GitHub login to one person — today they are two accounts
- [ ] Rate limiting on write endpoints
- [ ] Make CORS origins configurable
- [ ] Pagination on collection endpoints
- [ ] Full-text index on card names to replace the current `Contains` search
- [ ] Integration tests
- [ ] Docker Compose (API + SQL Server)

### Related repositories

| Repository | Role |
|---|---|
| **scriptorium-api** | This repository — REST API and data model |
| [scriptorium-importer](https://github.com/arthur-lagenebre/scriptorium-importer) | Scryfall ETL feeding this API |
| [scriptorium-web](https://github.com/arthur-lagenebre/scriptorium-web) | Angular front end |

---

## Français

### Le problème

Wizards of the Coast ne traduit les cartes Magic que dans quelques langues, et ne met à jour que le texte anglais. Les joueurs de toutes les autres langues se retrouvent avec des cartes obsolètes, ou sans traduction du tout.

**Scriptorium** est une plateforme permettant à une communauté de maintenir elle-même ces traductions. Le nom vient des ateliers monastiques où les manuscrits étaient copiés et traduits à la main — ce qui n'est pas très loin de ce dont il s'agit ici.

### Ce que contient ce dépôt

Une Web API ASP.NET Core 10 placée entre la base SQL Server et les deux clients du projet :

```
  scriptorium-importer  ──POST──▶  ┌──────────────────┐  ──EF Core──▶  SQL Server
                                   │  scriptorium-api │
  scriptorium-web       ──GET───▶  └──────────────────┘
                        ──PUT───▶
```

C'est l'unique chemin d'écriture vers la base et l'unique chemin de lecture pour le front.

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

Le jeu figure volontairement dans l'espace de noms. Le modèle de données de Magic — coûts de mana, identité colorielle, force/endurance, 22 layouts — lui est propre, et un modèle Pokémon ou Lorcana ne lui ressemblerait en rien. Ce qui se réutilise d'un jeu à l'autre, c'est le *motif de localisation*, pas le schéma. Conserver `Scriptorium.Mtg.*` laisse la place à un `Scriptorium.Pokemon.*` à côté.

### Architecture

Une tranche verticale par agrégat :

```
Controller  →  IService  →  Service  →  MtgDbContext  →  SQL Server
```

Les services portent toutes les requêtes EF Core ; les contrôleurs se contentent de traduire le HTTP en appels de service. Les dépendances sont injectées via les constructeurs primaires.

`CardTutorsController` renvoie un `CardTutor` — un modèle de lecture aplati agrégeant une carte, toutes ses traductions, ses impressions, ses faces, ses cartes liées et ses rulings en une seule réponse, évitant au front de recomposer huit tables. *(En Magic, un « tutor » désigne une carte qui va en chercher une autre dans la bibliothèque.)*

**C'est dans le modèle de données que se trouve le vrai travail de conception.** Les traductions sont des lignes et non des colonnes, les données oracle sont séparées des données d'impression, et les lignes de type sont recomposées par langue — séparateurs compris, pour que le japonais et le chinois n'héritent pas de la ponctuation anglaise. Voir [docs/DATA-MODEL.md](docs/DATA-MODEL.md).

### Authentification

La lecture est anonyme, toujours. Seule l'écriture exige un compte — Scryfall interdit de placer les données des cartes derrière quelque mur que ce soit.

**C'est l'API qui est le client OAuth.** Le front redirige vers `/api/auth/login/{provider}`, l'API échange le code d'autorisation, résout un compte local et émet **son propre JWT**. Ce n'est pas la seule conception possible, mais c'est celle qui fonctionne pour les deux fournisseurs : GitHub n'implémente pas OIDC et ne délivre aucun `id_token` signé, si bien que valider directement les jetons du fournisseur n'aurait marché que pour Google.

Trois schémas cohabitent. Un cookie éphémère `External` transporte le résultat de la poignée de main OAuth et disparaît dès que l'utilisateur local est résolu ; Google et GitHub y écrivent ; JWT Bearer est le schéma par défaut et le seul qui authentifie les appels d'API.

Le jeton revient au front dans le **fragment d'URL** plutôt que dans la chaîne de requête : un fragment n'atteint jamais le serveur et ne se retrouve dans aucun journal d'accès.

### Le modèle de contribution

Édition directe, façon wiki. Tout contributeur connecté peut modifier une traduction, le changement est visible immédiatement, et l'historique complet est public.

Chaque modification écrit une `TranslationRevision` — auteur, horodatage, valeur précédente, nouvelle valeur, commentaire facultatif. Les révisions sont **immuables** : corriger une traduction en crée une nouvelle, et annuler en écrit une de plus plutôt que d'effacer quoi que ce soit.

Deux règles à connaître :

- **L'anglais est en lecture seule.** C'est le texte officiel de Wizards, réécrit à chaque import ; une correction communautaire y serait silencieusement écrasée.
- **Un champ nul ne change rien.** Ne soumettre qu'un nom de carte laisse son texte de règles intact : un formulaire partiellement rempli n'efface jamais le travail d'un autre.

`TranslationRevision.Status` porte déjà `Pending` et `Rejected`, aujourd'hui inutilisés. Ils existent pour qu'une étape de relecture puisse être introduite plus tard sans toucher au schéma.

### Endpoints

La documentation interactive complète est sur `/swagger` en Development, avec un bouton **Authorize** pour y coller un jeton.

| Route | Verbes | Auth | Rôle |
|---|---|---|---|
| `/api/auth/login/{provider}` | GET | — | Démarre la connexion (`google` ou `github`) |
| `/api/auth/callback` | GET | — | Retour du fournisseur ; émet le JWT |
| `/api/auth/me` | GET | ✔ | Profil courant et rôles |
| `/api/cards/{cardId}/translations/{language}` | GET | — | Traduction d'une carte dans une langue |
| `/api/cards/{cardId}/translations/{language}` | PUT | ✔ | Crée ou met à jour cette traduction |
| `/api/cards/{cardId}/history` | GET | — | Historique des révisions, filtrable par langue |
| `/api/cards/{cardId}/revert/{revisionId}` | POST | ✔ | Rétablit la valeur antérieure à une révision |
| `/api/CardTutors/{id}` | GET | — | Carte agrégée complète, toutes langues |
| `/api/CardTutors/search/{cardName}` | GET | — | Recherche de cartes par nom anglais |
| `/api/Cards`, `/api/CardNames`, `/api/CardSet`, … | GET, POST | — | Ingestion et données de référence (19 contrôleurs) |

Les anciens `POST` servent l'ingestion par l'importer ; ils sont antérieurs à l'API de contribution et ne sont pas le chemin qu'un traducteur humain doit emprunter.

### Démarrage

**Prérequis**

- SDK .NET 10
- SQL Server (LocalDB, Express ou complet)
- Une application OAuth chez Google et/ou GitHub, avec pour rappel `http://localhost:5141/signin-google` et `http://localhost:5141/signin-github`

```bash
git clone https://github.com/arthur-lagenebre/scriptorium-api.git
cd scriptorium-api
dotnet restore
```

Les secrets ne vont jamais dans `appsettings.json` :

```bash
cd src/Scriptorium.Mtg.Api
dotnet user-secrets init
dotnet user-secrets set "ConnectionStrings:MTGConnectionString" "Server=localhost;Database=MagicTheGathering;Trusted_Connection=True;Encrypt=False;"
dotnet user-secrets set "Jwt:Key" "<64 octets aléatoires, en base64>"
dotnet user-secrets set "Authentication:Google:ClientId" "…"
dotnet user-secrets set "Authentication:Google:ClientSecret" "…"
dotnet user-secrets set "Authentication:GitHub:ClientId" "…"
dotnet user-secrets set "Authentication:GitHub:ClientSecret" "…"
```

Créer la base puis lancer :

```bash
dotnet ef database update --project src/Scriptorium.Mtg.Api
dotnet run --project src/Scriptorium.Mtg.Api
```

L'URL d'écoute est affichée au démarrage (`http://localhost:5141` par défaut). **Peupler la base** en exécutant [scriptorium-importer](https://github.com/arthur-lagenebre/scriptorium-importer) contre cette API.

> ⚠️ **Limitation connue :** la politique CORS est figée sur `http://localhost:4200`. Rendre les origines configurables figure dans la feuille de route.

### Format de solution

La solution utilise SLNX, le format par défaut depuis .NET 10. Visual Studio n'ouvre les fichiers `.slnx` qu'une fois l'option *Outils → Options → Environnement → Preview Features → Use Solution File Persistence Model* activée. Rider, VS Code et `dotnet build` les gèrent nativement.

### Migrations

```bash
dotnet ef migrations add NomDeLaMigration --project src/Scriptorium.Mtg.Api
dotnet ef migrations has-pending-model-changes --project src/Scriptorium.Mtg.Api
dotnet ef database update --project src/Scriptorium.Mtg.Api
```

Les données de seed se trouvent dans `MtgDbContext.OnModelCreating`. **Les identifiants de seed doivent rester codés en dur** : un `Guid.NewGuid()` à cet endroit rend le modèle différent à chaque compilation, ce qu'EF Core 9+ refuse au moment d'appliquer une migration. La CI exécute `has-pending-model-changes`, si bien qu'un modèle modifié sans sa migration fait échouer le build.

### Feuille de route

- [ ] Contrôle de concurrence sur les écritures — deux éditions simultanées se résolvent aujourd'hui au dernier arrivé, silencieusement
- [ ] Identifiant de lot sur les révisions, pour annuler une contribution d'un seul geste plutôt que champ par champ
- [ ] Modération : bloquer un contributeur fonctionne, mais rien ne fait remonter les modifications suspectes
- [ ] Anonymisation des comptes, pour honorer une demande de suppression sans trouer l'historique
- [ ] Rattacher une connexion Google et une connexion GitHub à une même personne — ce sont aujourd'hui deux comptes
- [ ] Limitation de débit sur les endpoints d'écriture
- [ ] Rendre les origines CORS configurables
- [ ] Pagination sur les endpoints de collection
- [ ] Index full-text sur les noms de cartes, en remplacement de la recherche `Contains`
- [ ] Tests d'intégration
- [ ] Docker Compose (API + SQL Server)

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
