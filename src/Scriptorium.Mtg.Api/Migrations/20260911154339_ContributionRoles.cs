using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Scriptorium.Mtg.Api.Migrations
{
    /// <inheritdoc />
    public partial class ContributionRoles : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_TranslationRevisions_TargetType_TargetId_CreatedAt",
                table: "TranslationRevisions");

            migrationBuilder.RenameColumn(
                name: "TargetId",
                table: "TranslationRevisions",
                newName: "CardSetFaceId");

            migrationBuilder.CreateTable(
                name: "UserRoles",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    UserId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Role = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    Language = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: true),
                    GrantedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    GrantedByUserId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserRoles", x => x.Id);
                    table.ForeignKey(
                        name: "FK_UserRoles_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_TranslationRevisions_TargetType_CardId_FaceId_Language_CreatedAt",
                table: "TranslationRevisions",
                columns: new[] { "TargetType", "CardId", "FaceId", "Language", "CreatedAt" });

            migrationBuilder.CreateIndex(
                name: "IX_UserRoles_UserId_Role_Language",
                table: "UserRoles",
                columns: new[] { "UserId", "Role", "Language" },
                unique: true,
                filter: "[Language] IS NOT NULL");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "UserRoles");

            migrationBuilder.DropIndex(
                name: "IX_TranslationRevisions_TargetType_CardId_FaceId_Language_CreatedAt",
                table: "TranslationRevisions");

            migrationBuilder.RenameColumn(
                name: "CardSetFaceId",
                table: "TranslationRevisions",
                newName: "TargetId");

            migrationBuilder.CreateIndex(
                name: "IX_TranslationRevisions_TargetType_TargetId_CreatedAt",
                table: "TranslationRevisions",
                columns: new[] { "TargetType", "TargetId", "CreatedAt" });
        }
    }
}
