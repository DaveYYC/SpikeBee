using Microsoft.EntityFrameworkCore.Migrations;

namespace Website.Migrations
{
    public partial class initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.DropForeignKey(
            //    name: "FK_VendorPrograms_ProgramLocations_ProgramLocationId",
            //    table: "VendorPrograms");

            //migrationBuilder.DropIndex(
            //    name: "IX_VendorPrograms_ProgramLocationId",
            //    table: "VendorPrograms");

            //migrationBuilder.DropColumn(
            //    name: "Municipality",
            //    table: "Vendors");

            //migrationBuilder.DropColumn(
            //    name: "Province",
            //    table: "Vendors");

            //migrationBuilder.DropColumn(
            //    name: "ProgramLocationId",
            //    table: "VendorPrograms");

            //migrationBuilder.AddColumn<int>(
            //    name: "CityId",
            //    table: "VendorPrograms",
            //    nullable: false,
            //    defaultValue: 0);

            //migrationBuilder.AddColumn<string>(
            //    name: "Headline",
            //    table: "VendorPrograms",
            //    maxLength: 5000,
            //    nullable: true);

            //migrationBuilder.AddColumn<string>(
            //    name: "Requirements",
            //    table: "VendorPrograms",
            //    maxLength: 5000,
            //    nullable: true);

            //migrationBuilder.AlterColumn<string>(
            //    name: "Province",
            //    table: "ProgramLocations",
            //    maxLength: 50,
            //    nullable: false,
            //    oldClrType: typeof(string),
            //    oldType: "nvarchar(max)");

            //migrationBuilder.CreateTable(
            //    name: "Countries",
            //    columns: table => new
            //    {
            //        CountryId = table.Column<int>(nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1"),
            //        CountryName = table.Column<string>(nullable: true)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Countries", x => x.CountryId);
            //    });

            //migrationBuilder.CreateTable(
            //    name: "Provinces",
            //    columns: table => new
            //    {
            //        ProvinceId = table.Column<int>(nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1"),
            //        ProvinceName = table.Column<string>(nullable: true),
            //        CountryId = table.Column<int>(nullable: false)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Provinces", x => x.ProvinceId);
            //        table.ForeignKey(
            //            name: "FK_Provinces_Countries_CountryId",
            //            column: x => x.CountryId,
            //            principalTable: "Countries",
            //            principalColumn: "CountryId",
            //            onDelete: ReferentialAction.Cascade);
            //    });

            //migrationBuilder.CreateTable(
            //    name: "Cities",
            //    columns: table => new
            //    {
            //        CityId = table.Column<int>(nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1"),
            //        CityName = table.Column<string>(nullable: true),
            //        ProvinceId = table.Column<int>(nullable: false)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Cities", x => x.CityId);
            //        table.ForeignKey(
            //            name: "FK_Cities_Provinces_ProvinceId",
            //            column: x => x.ProvinceId,
            //            principalTable: "Provinces",
            //            principalColumn: "ProvinceId",
            //            onDelete: ReferentialAction.Cascade);
            //    });

            //migrationBuilder.CreateIndex(
            //    name: "IX_VendorPrograms_CityId",
            //    table: "VendorPrograms",
            //    column: "CityId",
            //    unique: true);

            //migrationBuilder.CreateIndex(
            //    name: "IX_Cities_ProvinceId",
            //    table: "Cities",
            //    column: "ProvinceId");

            //migrationBuilder.CreateIndex(
            //    name: "IX_Provinces_CountryId",
            //    table: "Provinces",
            //    column: "CountryId");

            //migrationBuilder.AddForeignKey(
            //    name: "FK_VendorPrograms_Cities_CityId",
            //    table: "VendorPrograms",
            //    column: "CityId",
            //    principalTable: "Cities",
            //    principalColumn: "CityId",
            //    onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.DropForeignKey(
            //    name: "FK_VendorPrograms_Cities_CityId",
            //    table: "VendorPrograms");

            //migrationBuilder.DropTable(
            //    name: "Cities");

            //migrationBuilder.DropTable(
            //    name: "Provinces");

            //migrationBuilder.DropTable(
            //    name: "Countries");

            //migrationBuilder.DropIndex(
            //    name: "IX_VendorPrograms_CityId",
            //    table: "VendorPrograms");

            //migrationBuilder.DropColumn(
            //    name: "CityId",
            //    table: "VendorPrograms");

            //migrationBuilder.DropColumn(
            //    name: "Headline",
            //    table: "VendorPrograms");

            //migrationBuilder.DropColumn(
            //    name: "Requirements",
            //    table: "VendorPrograms");

            //migrationBuilder.AddColumn<string>(
            //    name: "Municipality",
            //    table: "Vendors",
            //    type: "nvarchar(50)",
            //    maxLength: 50,
            //    nullable: false,
            //    defaultValue: "");

            //migrationBuilder.AddColumn<string>(
            //    name: "Province",
            //    table: "Vendors",
            //    type: "nvarchar(20)",
            //    maxLength: 20,
            //    nullable: false,
            //    defaultValue: "");

            //migrationBuilder.AddColumn<int>(
            //    name: "ProgramLocationId",
            //    table: "VendorPrograms",
            //    type: "int",
            //    nullable: false,
            //    defaultValue: 0);

            //migrationBuilder.AlterColumn<string>(
            //    name: "Province",
            //    table: "ProgramLocations",
            //    type: "nvarchar(max)",
            //    nullable: false,
            //    oldClrType: typeof(string),
            //    oldMaxLength: 50);

            //migrationBuilder.CreateIndex(
            //    name: "IX_VendorPrograms_ProgramLocationId",
            //    table: "VendorPrograms",
            //    column: "ProgramLocationId");

            //migrationBuilder.AddForeignKey(
            //    name: "FK_VendorPrograms_ProgramLocations_ProgramLocationId",
            //    table: "VendorPrograms",
            //    column: "ProgramLocationId",
            //    principalTable: "ProgramLocations",
            //    principalColumn: "Id",
            //    onDelete: ReferentialAction.Cascade);
        }
    }
}
