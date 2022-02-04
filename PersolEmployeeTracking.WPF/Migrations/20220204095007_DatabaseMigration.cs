using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PersolEmployeeTracking.WPF.Migrations
{
    public partial class DatabaseMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "DEPARTMENT",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DepartmentName = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DEPARTMENT", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "PERMISSONSTATE",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PermissionState = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PERMISSONSTATE", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "SALARYMONTH",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MonthName = table.Column<string>(type: "varchar(10)", unicode: false, maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SALARYMONTH", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "TASKSTATE",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NameState = table.Column<string>(type: "varchar(15)", unicode: false, maxLength: 15, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TASKSTATE", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "POSITION",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PositionName = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    DepartmentID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_POSITION", x => x.ID);
                    table.ForeignKey(
                        name: "FK_POSITION_DEPARTMENT",
                        column: x => x.DepartmentID,
                        principalTable: "DEPARTMENT",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "EMPLOYEE",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserNo = table.Column<int>(type: "int", nullable: false),
                    Name = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    Surname = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    ImagePath = table.Column<string>(type: "varchar(max)", unicode: false, nullable: true),
                    DepartmentID = table.Column<int>(type: "int", nullable: false),
                    PositionID = table.Column<int>(type: "int", nullable: false),
                    Salary = table.Column<int>(type: "int", nullable: false),
                    Birthday = table.Column<DateTime>(type: "date", nullable: true),
                    Adress = table.Column<string>(type: "varchar(max)", unicode: false, nullable: true),
                    isAdmin = table.Column<bool>(type: "bit", nullable: false),
                    Password = table.Column<string>(type: "varchar(10)", unicode: false, maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EMPLOYEE", x => x.ID);
                    table.ForeignKey(
                        name: "FK_EMPLOYEE_DEPARTMENT",
                        column: x => x.DepartmentID,
                        principalTable: "DEPARTMENT",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_EMPLOYEE_POSITION",
                        column: x => x.PositionID,
                        principalTable: "POSITION",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "PERMISSION",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmployeeID = table.Column<int>(type: "int", nullable: false),
                    UserNo = table.Column<int>(type: "int", nullable: false),
                    StartDate = table.Column<DateTime>(type: "date", nullable: true),
                    EndDate = table.Column<DateTime>(type: "date", nullable: true),
                    PermissionState = table.Column<int>(type: "int", nullable: false),
                    Explanation = table.Column<string>(type: "varchar(max)", unicode: false, nullable: true),
                    PermissionAmount = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PERMISSION", x => x.ID);
                    table.ForeignKey(
                        name: "FK_PERMISSION_EMPLOYEE",
                        column: x => x.EmployeeID,
                        principalTable: "EMPLOYEE",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_PERMISSION_PERMISSONSTATE",
                        column: x => x.PermissionState,
                        principalTable: "PERMISSONSTATE",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "SALARY",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmployeeID = table.Column<int>(type: "int", nullable: false),
                    Amount = table.Column<int>(type: "int", nullable: false),
                    Month = table.Column<int>(type: "int", nullable: false),
                    Year = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SALARY", x => x.ID);
                    table.ForeignKey(
                        name: "FK_SALARY_EMPLOYEE",
                        column: x => x.EmployeeID,
                        principalTable: "EMPLOYEE",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_SALARY_SALARYMONTH",
                        column: x => x.Month,
                        principalTable: "SALARYMONTH",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TASK",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmployeeID = table.Column<int>(type: "int", nullable: true),
                    TaskStartDate = table.Column<DateTime>(type: "date", nullable: true),
                    TaskDeliveryDate = table.Column<DateTime>(type: "date", nullable: true),
                    TaskState = table.Column<int>(type: "int", nullable: true),
                    TaskTitle = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    TaskContent = table.Column<string>(type: "varchar(max)", unicode: false, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TASK", x => x.ID);
                    table.ForeignKey(
                        name: "FK_TASK_EMPLOYEE",
                        column: x => x.EmployeeID,
                        principalTable: "EMPLOYEE",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_TASK_TASKSTATE",
                        column: x => x.TaskState,
                        principalTable: "TASKSTATE",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_EMPLOYEE_DepartmentID",
                table: "EMPLOYEE",
                column: "DepartmentID");

            migrationBuilder.CreateIndex(
                name: "IX_EMPLOYEE_PositionID",
                table: "EMPLOYEE",
                column: "PositionID");

            migrationBuilder.CreateIndex(
                name: "IX_PERMISSION_EmployeeID",
                table: "PERMISSION",
                column: "EmployeeID");

            migrationBuilder.CreateIndex(
                name: "IX_PERMISSION_PermissionState",
                table: "PERMISSION",
                column: "PermissionState");

            migrationBuilder.CreateIndex(
                name: "IX_POSITION_DepartmentID",
                table: "POSITION",
                column: "DepartmentID");

            migrationBuilder.CreateIndex(
                name: "IX_SALARY_EmployeeID",
                table: "SALARY",
                column: "EmployeeID");

            migrationBuilder.CreateIndex(
                name: "IX_SALARY_Month",
                table: "SALARY",
                column: "Month");

            migrationBuilder.CreateIndex(
                name: "IX_TASK_EmployeeID",
                table: "TASK",
                column: "EmployeeID");

            migrationBuilder.CreateIndex(
                name: "IX_TASK_TaskState",
                table: "TASK",
                column: "TaskState");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "PERMISSION");

            migrationBuilder.DropTable(
                name: "SALARY");

            migrationBuilder.DropTable(
                name: "TASK");

            migrationBuilder.DropTable(
                name: "PERMISSONSTATE");

            migrationBuilder.DropTable(
                name: "SALARYMONTH");

            migrationBuilder.DropTable(
                name: "EMPLOYEE");

            migrationBuilder.DropTable(
                name: "TASKSTATE");

            migrationBuilder.DropTable(
                name: "POSITION");

            migrationBuilder.DropTable(
                name: "DEPARTMENT");
        }
    }
}
