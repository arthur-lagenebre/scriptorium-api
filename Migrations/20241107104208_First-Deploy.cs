using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace MTG.Api.Migrations
{
    /// <inheritdoc />
    public partial class FirstDeploy : Migration
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
                });

            migrationBuilder.CreateTable(
                name: "CardSubtypes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    SubtypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardSubtypes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "CardSupertypes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    SupertypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardSupertypes", x => x.Id);
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
                });

            migrationBuilder.CreateTable(
                name: "CardTypes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    FaceId = table.Column<int>(type: "int", nullable: false),
                    TypeId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardTypes", x => x.Id);
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
                name: "RelatedCards",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    RattachedCardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CardId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Component = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RelatedCards", x => x.Id);
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
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    TypeCard = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Name = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Subtypes", x => new { x.Id, x.Language });
                });

            migrationBuilder.CreateTable(
                name: "Supertypes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Name = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Supertypes", x => new { x.Id, x.Language });
                });

            migrationBuilder.CreateTable(
                name: "Types",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    Name = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Types", x => new { x.Id, x.Language });
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

            migrationBuilder.CreateIndex(
                name: "IX_CardFaces_CardId_FaceId",
                table: "CardFaces",
                columns: new[] { "CardId", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardNames_CardId_Language_FaceId",
                table: "CardNames",
                columns: new[] { "CardId", "Language", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardSubtypes_CardId_FaceId",
                table: "CardSubtypes",
                columns: new[] { "CardId", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardSupertypes_CardId_FaceId",
                table: "CardSupertypes",
                columns: new[] { "CardId", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardTexts_CardId_Language_FaceId",
                table: "CardTexts",
                columns: new[] { "CardId", "Language", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_CardTypes_CardId_FaceId",
                table: "CardTypes",
                columns: new[] { "CardId", "FaceId" });

            migrationBuilder.CreateIndex(
                name: "IX_RelatedCards_RattachedCardId_CardId",
                table: "RelatedCards",
                columns: new[] { "RattachedCardId", "CardId" });
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
                name: "Cards");

            migrationBuilder.DropTable(
                name: "CardSetFaces");

            migrationBuilder.DropTable(
                name: "CardSets");

            migrationBuilder.DropTable(
                name: "CardSubtypes");

            migrationBuilder.DropTable(
                name: "CardSupertypes");

            migrationBuilder.DropTable(
                name: "CardTexts");

            migrationBuilder.DropTable(
                name: "CardTypes");

            migrationBuilder.DropTable(
                name: "Colors");

            migrationBuilder.DropTable(
                name: "RelatedCards");

            migrationBuilder.DropTable(
                name: "Sets");

            migrationBuilder.DropTable(
                name: "Subtypes");

            migrationBuilder.DropTable(
                name: "Supertypes");

            migrationBuilder.DropTable(
                name: "Types");
        }
    }
}
