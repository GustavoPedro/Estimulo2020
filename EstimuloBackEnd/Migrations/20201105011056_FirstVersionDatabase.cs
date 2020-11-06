using Microsoft.EntityFrameworkCore.Migrations;

namespace EstimuloBackEnd.Migrations
{
    public partial class FirstVersionDatabase : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Endereco",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Cep = table.Column<string>(nullable: false),
                    Rua = table.Column<string>(nullable: false),
                    Bairro = table.Column<string>(nullable: false),
                    Cidade = table.Column<string>(nullable: false),
                    Uf = table.Column<string>(maxLength: 2, nullable: false),
                    Complemento = table.Column<string>(nullable: true),
                    Numero = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Endereco", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Modulo",
                columns: table => new
                {
                    ModuleId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Modulo", x => x.ModuleId);
                });

            migrationBuilder.CreateTable(
                name: "Usuario",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nome = table.Column<string>(nullable: false),
                    Telefone = table.Column<string>(nullable: false),
                    Email = table.Column<string>(nullable: false),
                    Senha = table.Column<string>(nullable: false),
                    EnderecoId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuario", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Usuario_Endereco_EnderecoId",
                        column: x => x.EnderecoId,
                        principalTable: "Endereco",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ModuloDetalhes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ModuloId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ModuloDetalhes", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ModuloDetalhes_Modulo_ModuloId",
                        column: x => x.ModuloId,
                        principalTable: "Modulo",
                        principalColumn: "ModuleId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Empresa",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EnderecoId = table.Column<int>(nullable: false),
                    UserId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Empresa", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Empresa_Endereco_EnderecoId",
                        column: x => x.EnderecoId,
                        principalTable: "Endereco",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Empresa_Usuario_UserId",
                        column: x => x.UserId,
                        principalTable: "Usuario",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "DetalhesUsuarioModulo",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<int>(nullable: false),
                    ModuleDetailsId = table.Column<int>(nullable: false),
                    Progress = table.Column<double>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DetalhesUsuarioModulo", x => x.Id);
                    table.ForeignKey(
                        name: "FK_DetalhesUsuarioModulo_ModuloDetalhes_ModuleDetailsId",
                        column: x => x.ModuleDetailsId,
                        principalTable: "ModuloDetalhes",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_DetalhesUsuarioModulo_Usuario_UserId",
                        column: x => x.UserId,
                        principalTable: "Usuario",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AcompanhamentoNegocio",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmpresaId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AcompanhamentoNegocio", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AcompanhamentoNegocio_Empresa_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresa",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Motivacao",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmpresaId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Motivacao", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Motivacao_Empresa_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresa",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Negocio",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmpresaId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Negocio", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Negocio_Empresa_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresa",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Pandemia",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmpresaId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Pandemia", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Pandemia_Empresa_EmpresaId",
                        column: x => x.EmpresaId,
                        principalTable: "Empresa",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Endereco",
                columns: new[] { "Id", "Bairro", "Cep", "Cidade", "Complemento", "Numero", "Rua", "Uf" },
                values: new object[] { 1, "Bandeirantes", "32240410", "Contagem", "Casa", "121", "Rua dos Franciscanos", "MG" });

            migrationBuilder.InsertData(
                table: "Usuario",
                columns: new[] { "Id", "Email", "EnderecoId", "Nome", "Senha", "Telefone" },
                values: new object[] { 1, "gustavopedrodesouza@hotmail.com", 1, "Gustavo Pedro de Souza", "7227", "3333-2948" });

            migrationBuilder.CreateIndex(
                name: "IX_AcompanhamentoNegocio_EmpresaId",
                table: "AcompanhamentoNegocio",
                column: "EmpresaId");

            migrationBuilder.CreateIndex(
                name: "IX_DetalhesUsuarioModulo_ModuleDetailsId",
                table: "DetalhesUsuarioModulo",
                column: "ModuleDetailsId");

            migrationBuilder.CreateIndex(
                name: "IX_DetalhesUsuarioModulo_UserId",
                table: "DetalhesUsuarioModulo",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_Empresa_EnderecoId",
                table: "Empresa",
                column: "EnderecoId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Empresa_UserId",
                table: "Empresa",
                column: "UserId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_ModuloDetalhes_ModuloId",
                table: "ModuloDetalhes",
                column: "ModuloId");

            migrationBuilder.CreateIndex(
                name: "IX_Motivacao_EmpresaId",
                table: "Motivacao",
                column: "EmpresaId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Negocio_EmpresaId",
                table: "Negocio",
                column: "EmpresaId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Pandemia_EmpresaId",
                table: "Pandemia",
                column: "EmpresaId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Usuario_EnderecoId",
                table: "Usuario",
                column: "EnderecoId",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AcompanhamentoNegocio");

            migrationBuilder.DropTable(
                name: "DetalhesUsuarioModulo");

            migrationBuilder.DropTable(
                name: "Motivacao");

            migrationBuilder.DropTable(
                name: "Negocio");

            migrationBuilder.DropTable(
                name: "Pandemia");

            migrationBuilder.DropTable(
                name: "ModuloDetalhes");

            migrationBuilder.DropTable(
                name: "Empresa");

            migrationBuilder.DropTable(
                name: "Modulo");

            migrationBuilder.DropTable(
                name: "Usuario");

            migrationBuilder.DropTable(
                name: "Endereco");
        }
    }
}
