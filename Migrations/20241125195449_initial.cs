using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace MTG.Api.Migrations
{
    /// <inheritdoc />
    public partial class initial : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Artists",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Artists", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Cards",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ManaCost = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false),
                    ManaValue = table.Column<double>(type: "float", nullable: false),
                    Colors = table.Column<int>(type: "int", nullable: false),
                    ColorsIdentity = table.Column<int>(type: "int", nullable: false),
                    ColorsIndicator = table.Column<int>(type: "int", nullable: false),
                    Layout = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: false),
                    Keyword = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ProducedMana = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Power = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Toughness = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Loyalty = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    HandModifier = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    LifeModifier = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cards", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Colors",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Colors", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Sets",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Code = table.Column<string>(type: "nvarchar(6)", maxLength: 6, nullable: false),
                    Name = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    Type = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ReleasedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    BlockCode = table.Column<string>(type: "nvarchar(6)", maxLength: 6, nullable: true),
                    Block = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: true),
                    ParentSetCode = table.Column<string>(type: "nvarchar(6)", maxLength: 6, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sets", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SubtypeLanguages",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SubtypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Name = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SubtypeLanguages", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Subtypes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    TypeCard = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DefaultName = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Subtypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SupertypeLanguages",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SupertypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Name = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SupertypeLanguages", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Supertypes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DefaultName = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Supertypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TypeLanguages",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    TypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Name = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TypeLanguages", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Types",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DefaultName = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Types", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "CardFaces",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    ManaCost = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false),
                    ManaValue = table.Column<double>(type: "float", nullable: false),
                    Colors = table.Column<int>(type: "int", nullable: false),
                    ColorsIndicator = table.Column<int>(type: "int", nullable: false),
                    Power = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Toughness = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Loyalty = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Defense = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardFaces", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CardFaces_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CardNames",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Value = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardNames", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CardNames_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CardTexts",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Value = table.Column<string>(type: "nvarchar(2500)", maxLength: 2500, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardTexts", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CardTexts_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CardTypelines",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Value = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardTypelines", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CardTypelines_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "RelatedCards",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false),
                    Component = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RelatedCards", x => x.Id);
                    table.ForeignKey(
                        name: "FK_RelatedCards_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Rulings",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Rule = table.Column<string>(type: "nvarchar(2500)", maxLength: 2500, nullable: false),
                    PublishedAt = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Rulings", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Rulings_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CardSets",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    SetId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CollectorNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Rarity = table.Column<string>(type: "nvarchar(25)", maxLength: 25, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardSets", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CardSets_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CardSets_Sets_SetId",
                        column: x => x.SetId,
                        principalTable: "Sets",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CardSetFaces",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardSetId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    ArtistsId = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardSetFaces", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CardSetFaces_CardSets_CardSetId",
                        column: x => x.CardSetId,
                        principalTable: "CardSets",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CardSetFaceFlavor",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardSetFaceId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    FlavorText = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    FlavorName = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardSetFaceFlavor", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CardSetFaceFlavor_CardSetFaces_CardSetFaceId",
                        column: x => x.CardSetFaceId,
                        principalTable: "CardSetFaces",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Colors",
                columns: new[] { "Id", "Description", "Name" },
                values: new object[,]
                {
                    { 1, "No color", "None" },
                    { 2, "White", "W" },
                    { 4, "Blue", "U" },
                    { 8, "Black", "B" },
                    { 16, "Red", "R" },
                    { 32, "Green", "G" }
                });

            migrationBuilder.InsertData(
                table: "TypeLanguages",
                columns: new[] { "Id", "Language", "Name", "TypeId" },
                values: new object[,]
                {
                    { new Guid("05aa7d5c-9d3e-4a34-a864-61b8aca1d6db"), "ja", "カード", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("272c1d99-f114-4cf1-94ba-5e16fd8b8c9a"), "en", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("44893044-8aa9-4292-8e6e-cb0ddd83a9df"), "es", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("4c89c29f-729d-49fb-8161-6a855d1cd9be"), "ru", "карту", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("55816bc7-d400-4e6c-a874-9cf1fd1368c6"), "zhs", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("7b34864b-c011-492f-8eeb-4cafe448ffc9"), "zht", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("a2f9f429-b828-47e4-af5a-06cb51b33bd1"), "ko", "카드", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("a57f1fc2-37c4-46b1-86fb-60b1f96a781c"), "it", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("caf94bfa-5a3b-4a3e-bf06-9e9d0d9379a3"), "pt", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("d41918b1-f330-4110-8dc3-d9fdbc58c5e3"), "fr", "Carte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("f655ecff-6d35-440a-b4d0-4b874172eb2f"), "de", "Karte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") }
                });

            migrationBuilder.InsertData(
                table: "Types",
                columns: new[] { "Id", "DefaultName" },
                values: new object[] { new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937"), "Card" });

            migrationBuilder.CreateIndex(
                name: "IX_CardFaces_CardId",
                table: "CardFaces",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_CardNames_CardId",
                table: "CardNames",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_CardSetFaceFlavor_CardSetFaceId",
                table: "CardSetFaceFlavor",
                column: "CardSetFaceId");

            migrationBuilder.CreateIndex(
                name: "IX_CardSetFaces_CardSetId",
                table: "CardSetFaces",
                column: "CardSetId");

            migrationBuilder.CreateIndex(
                name: "IX_CardSets_CardId",
                table: "CardSets",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_CardSets_SetId",
                table: "CardSets",
                column: "SetId");

            migrationBuilder.CreateIndex(
                name: "IX_CardTexts_CardId",
                table: "CardTexts",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_CardTypelines_CardId",
                table: "CardTypelines",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_RelatedCards_CardId",
                table: "RelatedCards",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_Rulings_CardId",
                table: "Rulings",
                column: "CardId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Artists");

            migrationBuilder.DropTable(
                name: "CardFaces");

            migrationBuilder.DropTable(
                name: "CardNames");

            migrationBuilder.DropTable(
                name: "CardSetFaceFlavor");

            migrationBuilder.DropTable(
                name: "CardTexts");

            migrationBuilder.DropTable(
                name: "CardTypelines");

            migrationBuilder.DropTable(
                name: "Colors");

            migrationBuilder.DropTable(
                name: "RelatedCards");

            migrationBuilder.DropTable(
                name: "Rulings");

            migrationBuilder.DropTable(
                name: "SubtypeLanguages");

            migrationBuilder.DropTable(
                name: "Subtypes");

            migrationBuilder.DropTable(
                name: "SupertypeLanguages");

            migrationBuilder.DropTable(
                name: "Supertypes");

            migrationBuilder.DropTable(
                name: "TypeLanguages");

            migrationBuilder.DropTable(
                name: "Types");

            migrationBuilder.DropTable(
                name: "CardSetFaces");

            migrationBuilder.DropTable(
                name: "CardSets");

            migrationBuilder.DropTable(
                name: "Cards");

            migrationBuilder.DropTable(
                name: "Sets");
        }
    }
}
