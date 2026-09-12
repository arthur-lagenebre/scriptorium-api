using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Scriptorium.Mtg.Api.Migrations
{
    /// <inheritdoc />
    public partial class DropUserRoleColumn : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_UserRoles_UserId_Role_Language",
                table: "UserRoles");

            migrationBuilder.DropColumn(
                name: "Role",
                table: "Users");

            migrationBuilder.CreateIndex(
                name: "IX_UserRoles_UserId_Role_Language",
                table: "UserRoles",
                columns: new[] { "UserId", "Role", "Language" },
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_UserRoles_UserId_Role_Language",
                table: "UserRoles");

            migrationBuilder.AddColumn<string>(
                name: "Role",
                table: "Users",
                type: "nvarchar(20)",
                maxLength: 20,
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateIndex(
                name: "IX_UserRoles_UserId_Role_Language",
                table: "UserRoles",
                columns: new[] { "UserId", "Role", "Language" },
                unique: true,
                filter: "[Language] IS NOT NULL");
        }
    }
}
