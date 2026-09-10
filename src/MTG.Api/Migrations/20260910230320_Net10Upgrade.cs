using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace MTG.Api.Migrations
{
    /// <inheritdoc />
    public partial class Net10Upgrade : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("4284fd77-bfa0-44c1-9941-5cfd4f2c0b74"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("5346476c-2b05-4360-9705-54aa0376ab58"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("5eeb72fe-2186-4954-add5-e610d6dc5ce2"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("669367c3-ba1f-4b27-abe8-b0ca40b13d5a"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("66dd5abf-cf59-41f0-ae3f-5d52190469ab"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("8b2ec9e8-e20e-455b-8b17-a1b03b259290"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("a6999ee9-7fa1-4d05-87fe-020859e07fb7"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("bad689b4-49a5-4464-8257-eac72029b0dd"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("c070e592-089a-4e4e-b1a8-93ab4c09d984"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("c53a1ccd-5452-4c78-8029-746aa7f44635"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("f5a5239c-8d67-4e85-9419-e640a666acbc"));

            migrationBuilder.InsertData(
                table: "TypeLanguages",
                columns: new[] { "Id", "Language", "Name", "TypeId" },
                values: new object[,]
                {
                    { new Guid("052ab03b-29fa-46af-9ecd-ddfe33413c5b"), "ru", "карту", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("1f7c43c1-77ec-458b-b483-432946da2565"), "zhs", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("2d58c34b-27f4-4506-95be-2404c138d535"), "es", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("30015bd7-e452-43fd-bae2-c751c6ed23c3"), "fr", "Carte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("3449fd96-0f9b-44c0-bbf4-8710b8ab48ec"), "ja", "カード", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("3a2733f1-994e-46b0-bfdf-09f332ff3daa"), "ko", "카드", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("5d0cf57e-2dbf-4133-b679-15a85d7bc8ce"), "de", "Karte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("79972c36-450b-4966-8d9e-f6c217689c74"), "pt", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("a0ec02ac-825c-42d9-8845-2f1f01922dc5"), "it", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("be0dda5f-379e-4d6d-ab52-b01f3aaa55bc"), "en", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("ce3144d2-e168-43ee-916b-af91982b6fd2"), "zht", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("052ab03b-29fa-46af-9ecd-ddfe33413c5b"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("1f7c43c1-77ec-458b-b483-432946da2565"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("2d58c34b-27f4-4506-95be-2404c138d535"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("30015bd7-e452-43fd-bae2-c751c6ed23c3"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("3449fd96-0f9b-44c0-bbf4-8710b8ab48ec"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("3a2733f1-994e-46b0-bfdf-09f332ff3daa"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("5d0cf57e-2dbf-4133-b679-15a85d7bc8ce"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("79972c36-450b-4966-8d9e-f6c217689c74"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("a0ec02ac-825c-42d9-8845-2f1f01922dc5"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("be0dda5f-379e-4d6d-ab52-b01f3aaa55bc"));

            migrationBuilder.DeleteData(
                table: "TypeLanguages",
                keyColumn: "Id",
                keyValue: new Guid("ce3144d2-e168-43ee-916b-af91982b6fd2"));

            migrationBuilder.InsertData(
                table: "TypeLanguages",
                columns: new[] { "Id", "Language", "Name", "TypeId" },
                values: new object[,]
                {
                    { new Guid("4284fd77-bfa0-44c1-9941-5cfd4f2c0b74"), "zht", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("5346476c-2b05-4360-9705-54aa0376ab58"), "de", "Karte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("5eeb72fe-2186-4954-add5-e610d6dc5ce2"), "ko", "카드", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("669367c3-ba1f-4b27-abe8-b0ca40b13d5a"), "en", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("66dd5abf-cf59-41f0-ae3f-5d52190469ab"), "ja", "カード", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("8b2ec9e8-e20e-455b-8b17-a1b03b259290"), "it", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("a6999ee9-7fa1-4d05-87fe-020859e07fb7"), "zhs", "牌", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("bad689b4-49a5-4464-8257-eac72029b0dd"), "es", "Carta", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("c070e592-089a-4e4e-b1a8-93ab4c09d984"), "pt", "Card", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("c53a1ccd-5452-4c78-8029-746aa7f44635"), "ru", "карту", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") },
                    { new Guid("f5a5239c-8d67-4e85-9419-e640a666acbc"), "fr", "Carte", new Guid("18943286-deb5-4d81-b089-6cc4bc2b6937") }
                });
        }
    }
}
