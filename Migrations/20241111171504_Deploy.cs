using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace MTG.Api.Migrations
{
    /// <inheritdoc />
    public partial class Deploy : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Artists",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
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
                    BlockCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Block = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ParentSetCode = table.Column<string>(type: "nvarchar(6)", maxLength: 6, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sets", x => x.Id);
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
                    Value = table.Column<string>(type: "nvarchar(max)", nullable: false)
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
                    Value = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false)
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
                    Component = table.Column<string>(type: "nvarchar(max)", nullable: false)
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
                    table.ForeignKey(
                        name: "FK_SubtypeLanguages_Subtypes_SubtypeId",
                        column: x => x.SubtypeId,
                        principalTable: "Subtypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
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
                    table.ForeignKey(
                        name: "FK_SupertypeLanguages_Supertypes_SupertypeId",
                        column: x => x.SupertypeId,
                        principalTable: "Supertypes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
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
                    table.ForeignKey(
                        name: "FK_TypeLanguages_Types_TypeId",
                        column: x => x.TypeId,
                        principalTable: "Types",
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
                    ArtistsId = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    FlavorText = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FlavorName = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: false)
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
                table: "Types",
                columns: new[] { "Id", "DefaultName" },
                values: new object[] { new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937"), "Card" });

            migrationBuilder.InsertData(
                table: "TypeLanguages",
                columns: new[] { "Id", "Language", "Name", "TypeId" },
                values: new object[,]
                {
                    { new Guid("06a47464-b6b9-4a14-86e8-363ddfed3b40"), "zht", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("3d89d1ea-9aaf-4a53-a95b-632a808e5f53"), "ru", "карту", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("4bb44a1f-0ccb-4745-976c-695129b17c11"), "de", "Karte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("5798dd97-dde5-404b-85e5-65a8e83bc712"), "pt", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("7c7d9ab5-51d5-424e-a4ab-8ff948d864f4"), "es", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("857cd2ed-6356-4341-9b1b-5fe51cfdb3b9"), "ko", "카드", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("947e6e87-5992-40a0-af6a-f4eb24483e91"), "fr", "Carte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("b08972a3-28fa-44c2-872b-e95a125861d2"), "it", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("d29b77d1-7fcd-4b55-8a3e-18b94c70e607"), "zhs", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("d4ec3d26-ed9d-4b22-a3d2-bdcc84408171"), "ja", "カード", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("e5b9d8c3-c2b8-4e94-835e-28642fb3c6ed"), "en", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") }
                });

            migrationBuilder.CreateIndex(
                name: "IX_CardFaces_CardId_FaceId",
                table: "CardFaces",
                columns: new[] { "CardId", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardNames_CardId_Language_FaceId",
                table: "CardNames",
                columns: new[] { "CardId", "Language", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardSetFaces_CardSetId_FaceId",
                table: "CardSetFaces",
                columns: new[] { "CardSetId", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardSets_CardId",
                table: "CardSets",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_CardSets_SetId",
                table: "CardSets",
                column: "SetId");

            migrationBuilder.CreateIndex(
                name: "IX_CardTexts_CardId_Language_FaceId",
                table: "CardTexts",
                columns: new[] { "CardId", "Language", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardTypelines_CardId_Language_FaceId",
                table: "CardTypelines",
                columns: new[] { "CardId", "Language", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_RelatedCards_CardId",
                table: "RelatedCards",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_SubtypeLanguages_SubtypeId",
                table: "SubtypeLanguages",
                column: "SubtypeId");

            migrationBuilder.CreateIndex(
                name: "IX_SupertypeLanguages_SupertypeId",
                table: "SupertypeLanguages",
                column: "SupertypeId");

            migrationBuilder.CreateIndex(
                name: "IX_TypeLanguages_TypeId",
                table: "TypeLanguages",
                column: "TypeId");
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
                name: "CardSetFaces");

            migrationBuilder.DropTable(
                name: "CardTexts");

            migrationBuilder.DropTable(
                name: "CardTypelines");

            migrationBuilder.DropTable(
                name: "Colors");

            migrationBuilder.DropTable(
                name: "RelatedCards");

            migrationBuilder.DropTable(
                name: "SubtypeLanguages");

            migrationBuilder.DropTable(
                name: "SupertypeLanguages");

            migrationBuilder.DropTable(
                name: "TypeLanguages");

            migrationBuilder.DropTable(
                name: "CardSets");

            migrationBuilder.DropTable(
                name: "Subtypes");

            migrationBuilder.DropTable(
                name: "Supertypes");

            migrationBuilder.DropTable(
                name: "Types");

            migrationBuilder.DropTable(
                name: "Cards");

            migrationBuilder.DropTable(
                name: "Sets");
        }
    }
}
