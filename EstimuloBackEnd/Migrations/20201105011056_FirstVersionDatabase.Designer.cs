﻿// <auto-generated />
using EstimuloBackEnd.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace EstimuloBackEnd.Migrations
{
    [DbContext(typeof(DatabaseContext))]
    [Migration("20201105011056_FirstVersionDatabase")]
    partial class FirstVersionDatabase
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.9")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("EstimuloBackEnd.Models.Address", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Bairro")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Cep")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Cidade")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Complemento")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Numero")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Rua")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Uf")
                        .IsRequired()
                        .HasColumnType("nvarchar(2)")
                        .HasMaxLength(2);

                    b.HasKey("Id");

                    b.ToTable("Endereco");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Bairro = "Bandeirantes",
                            Cep = "32240410",
                            Cidade = "Contagem",
                            Complemento = "Casa",
                            Numero = "121",
                            Rua = "Rua dos Franciscanos",
                            Uf = "MG"
                        });
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Business", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("EmpresaId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId")
                        .IsUnique();

                    b.ToTable("Negocio");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.BusinessMonitoring", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("EmpresaId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId");

                    b.ToTable("AcompanhamentoNegocio");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Company", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("EnderecoId")
                        .HasColumnType("int");

                    b.Property<int>("UserId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("EnderecoId")
                        .IsUnique();

                    b.HasIndex("UserId")
                        .IsUnique();

                    b.ToTable("Empresa");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Module", b =>
                {
                    b.Property<int>("ModuleId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.HasKey("ModuleId");

                    b.ToTable("Modulo");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.ModuleDetails", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ModuloId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("ModuloId");

                    b.ToTable("ModuloDetalhes");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Motivation", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("EmpresaId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId")
                        .IsUnique();

                    b.ToTable("Motivacao");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Pandemic", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("EmpresaId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("EmpresaId")
                        .IsUnique();

                    b.ToTable("Pandemia");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("EnderecoId")
                        .HasColumnType("int");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Senha")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Telefone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("EnderecoId")
                        .IsUnique();

                    b.ToTable("Usuario");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Email = "gustavopedrodesouza@hotmail.com",
                            EnderecoId = 1,
                            Nome = "Gustavo Pedro de Souza",
                            Senha = "7227",
                            Telefone = "3333-2948"
                        });
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.UserModuleDetails", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ModuleDetailsId")
                        .HasColumnType("int");

                    b.Property<double>("Progress")
                        .HasColumnType("float");

                    b.Property<int>("UserId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("ModuleDetailsId");

                    b.HasIndex("UserId");

                    b.ToTable("DetalhesUsuarioModulo");
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Business", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.Company", "Empresa")
                        .WithOne("Negocio")
                        .HasForeignKey("EstimuloBackEnd.Models.Business", "EmpresaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.BusinessMonitoring", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.Company", "Empresa")
                        .WithMany("AcompanhamentoNegocio")
                        .HasForeignKey("EmpresaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Company", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.Address", "Endereco")
                        .WithOne("Empresa")
                        .HasForeignKey("EstimuloBackEnd.Models.Company", "EnderecoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("EstimuloBackEnd.Models.User", "Usuario")
                        .WithOne("Empresa")
                        .HasForeignKey("EstimuloBackEnd.Models.Company", "UserId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.ModuleDetails", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.Module", "Modulo")
                        .WithMany("ModuleDetails")
                        .HasForeignKey("ModuloId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Motivation", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.Company", "Empresa")
                        .WithOne("Motivacao")
                        .HasForeignKey("EstimuloBackEnd.Models.Motivation", "EmpresaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.Pandemic", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.Company", "Empresa")
                        .WithOne("Pandemia")
                        .HasForeignKey("EstimuloBackEnd.Models.Pandemic", "EmpresaId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.User", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.Address", "Endereco")
                        .WithOne("Usuario")
                        .HasForeignKey("EstimuloBackEnd.Models.User", "EnderecoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("EstimuloBackEnd.Models.UserModuleDetails", b =>
                {
                    b.HasOne("EstimuloBackEnd.Models.ModuleDetails", "ModuleDetails")
                        .WithMany("UsersModulesDetails")
                        .HasForeignKey("ModuleDetailsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("EstimuloBackEnd.Models.User", "User")
                        .WithMany("UsersModulesDetails")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}