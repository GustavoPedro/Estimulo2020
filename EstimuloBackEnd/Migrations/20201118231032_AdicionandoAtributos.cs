using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EstimuloBackEnd.Migrations
{
    public partial class AdicionandoAtributos : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "ApoioPandemia",
                table: "Pandemia",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "Emprestimo",
                table: "Pandemia",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "FiliaisCidades",
                table: "Pandemia",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "FiliaisPerdidasPandemia",
                table: "Pandemia",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<bool>(
                name: "FornecedorEncContrato",
                table: "Pandemia",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "Franquia",
                table: "Pandemia",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "LinhaEmprestimo",
                table: "Pandemia",
                nullable: true);

            migrationBuilder.AddColumn<decimal>(
                name: "PercentReducaoFaturamento",
                table: "Pandemia",
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<bool>(
                name: "ProgManutEmprego",
                table: "Pandemia",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<int>(
                name: "QtdFuncDemitidos",
                table: "Pandemia",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "EspecialidadesAcessoria",
                table: "Negocio",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "FaturamentoAntesCrise",
                table: "Negocio",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Nicho",
                table: "Negocio",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "NumeroFuncionarios",
                table: "Negocio",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "SetorAtuacao",
                table: "Negocio",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "DedicarMinimoTresHoras",
                table: "Motivacao",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "Importancia",
                table: "Motivacao",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "MotivoParticipacao",
                table: "Motivacao",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "TempoDedicacaoNegocio",
                table: "Motivacao",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Cnpj",
                table: "Empresa",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Email",
                table: "Empresa",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "Idade",
                table: "Empresa",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<bool>(
                name: "NegocioFamiliar",
                table: "Empresa",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "RazaoSocial",
                table: "Empresa",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "SiteRedeSocial",
                table: "Empresa",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Telefone",
                table: "Empresa",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<DateTime>(
                name: "DataPreenchimento",
                table: "AcompanhamentoNegocio",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "FechamentoUltimosMeses",
                table: "AcompanhamentoNegocio",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<bool>(
                name: "FluxoVendasAumentou",
                table: "AcompanhamentoNegocio",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "GastosAumentaram",
                table: "AcompanhamentoNegocio",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<bool>(
                name: "NClientesAumentou",
                table: "AcompanhamentoNegocio",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "ObsNegocio",
                table: "AcompanhamentoNegocio",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "QtdCaixaSubiu",
                table: "AcompanhamentoNegocio",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Status",
                table: "AcompanhamentoNegocio",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ApoioPandemia",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "Emprestimo",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "FiliaisCidades",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "FiliaisPerdidasPandemia",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "FornecedorEncContrato",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "Franquia",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "LinhaEmprestimo",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "PercentReducaoFaturamento",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "ProgManutEmprego",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "QtdFuncDemitidos",
                table: "Pandemia");

            migrationBuilder.DropColumn(
                name: "EspecialidadesAcessoria",
                table: "Negocio");

            migrationBuilder.DropColumn(
                name: "FaturamentoAntesCrise",
                table: "Negocio");

            migrationBuilder.DropColumn(
                name: "Nicho",
                table: "Negocio");

            migrationBuilder.DropColumn(
                name: "NumeroFuncionarios",
                table: "Negocio");

            migrationBuilder.DropColumn(
                name: "SetorAtuacao",
                table: "Negocio");

            migrationBuilder.DropColumn(
                name: "DedicarMinimoTresHoras",
                table: "Motivacao");

            migrationBuilder.DropColumn(
                name: "Importancia",
                table: "Motivacao");

            migrationBuilder.DropColumn(
                name: "MotivoParticipacao",
                table: "Motivacao");

            migrationBuilder.DropColumn(
                name: "TempoDedicacaoNegocio",
                table: "Motivacao");

            migrationBuilder.DropColumn(
                name: "Cnpj",
                table: "Empresa");

            migrationBuilder.DropColumn(
                name: "Email",
                table: "Empresa");

            migrationBuilder.DropColumn(
                name: "Idade",
                table: "Empresa");

            migrationBuilder.DropColumn(
                name: "NegocioFamiliar",
                table: "Empresa");

            migrationBuilder.DropColumn(
                name: "RazaoSocial",
                table: "Empresa");

            migrationBuilder.DropColumn(
                name: "SiteRedeSocial",
                table: "Empresa");

            migrationBuilder.DropColumn(
                name: "Telefone",
                table: "Empresa");

            migrationBuilder.DropColumn(
                name: "DataPreenchimento",
                table: "AcompanhamentoNegocio");

            migrationBuilder.DropColumn(
                name: "FechamentoUltimosMeses",
                table: "AcompanhamentoNegocio");

            migrationBuilder.DropColumn(
                name: "FluxoVendasAumentou",
                table: "AcompanhamentoNegocio");

            migrationBuilder.DropColumn(
                name: "GastosAumentaram",
                table: "AcompanhamentoNegocio");

            migrationBuilder.DropColumn(
                name: "NClientesAumentou",
                table: "AcompanhamentoNegocio");

            migrationBuilder.DropColumn(
                name: "ObsNegocio",
                table: "AcompanhamentoNegocio");

            migrationBuilder.DropColumn(
                name: "QtdCaixaSubiu",
                table: "AcompanhamentoNegocio");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "AcompanhamentoNegocio");
        }
    }
}
