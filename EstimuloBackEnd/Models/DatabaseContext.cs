using Microsoft.EntityFrameworkCore;

namespace EstimuloBackEnd.Models
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options)
            : base(options)
        {
        }
        public DbSet<User> Usuario { get; set; }
        public DbSet<Address> Endereco { get; set; }

        public DbSet<ModuleDetails> ModuloDetalhes { get; set; }
        public DbSet<Module> Modulo { get; set; }

        public DbSet<Company> Empresa { get; set; }

        public DbSet<UserModuleDetails> DetalhesUsuarioModulo { get; set; }

        public DbSet<Motivation> Motivacao { get; set; }

        public DbSet<Business> Negocio { get; set; }

        public DbSet<Pandemic> Pandemia { get; set; }

        public DbSet<BusinessMonitoring> AcompanhamentoNegocio { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Address>(options => {
                options.HasOne(a => a.Usuario)
               .WithOne(b => b.Endereco);
                //.OnDelete(DeleteBehavior.Cascade);


                options.HasOne(a => a.Empresa)
                .WithOne(b => b.Endereco);
                //.OnDelete(DeleteBehavior.Cascade);
            });
               

            modelBuilder.Entity<Address>().HasData(new Address { Id = 1, Cep = "32240410", Bairro = "Bandeirantes", Cidade = "Contagem", Rua = "Rua dos Franciscanos", Complemento = "Casa", Numero = "121", Uf = "MG" });

            modelBuilder.Entity<User>(options => {
                options.HasData(new User
                {
                    Id = 1,
                    EnderecoId = 1,
                    Email = "gustavopedrodesouza@hotmail.com",
                    Nome = "Gustavo Pedro de Souza",
                    Senha = "7227",
                    Telefone = "3333-2948",

                });
                options
                    .HasOne(usr => usr.Empresa)
                    .WithOne(comp => comp.Usuario)
                .OnDelete(DeleteBehavior.Restrict);
            
            });

            modelBuilder.Entity<UserModuleDetails>(options => {
                options
                .HasOne(userModuleDetails => userModuleDetails.User)
                .WithMany(user => user.UsersModulesDetails);
                //.OnDelete(DeleteBehavior.Cascade);

                options
                .HasOne(userModuleDetails => userModuleDetails.ModuleDetails)
                .WithMany(module => module.UsersModulesDetails);
                //.OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<Module>(options =>
            {             
                options
               .HasMany(module => module.ModuleDetails)
               .WithOne(moduleDetails => moduleDetails.Modulo);
                //.OnDelete(DeleteBehavior.Cascade);             
            });

            modelBuilder.Entity<Company>(options =>
            {
                options
                .HasOne(comp => comp.Motivacao)
                .WithOne(mot => mot.Empresa);
                //.OnDelete(DeleteBehavior.Cascade);

                options
               .HasMany(comp => comp.AcompanhamentoNegocio)
               .WithOne(acomp => acomp.Empresa);
                //.OnDelete(DeleteBehavior.Cascade);

                options
                .HasOne(comp => comp.Pandemia)
                .WithOne(pand => pand.Empresa);
                //.OnDelete(DeleteBehavior.Cascade);

                options
                .HasOne(comp => comp.Negocio)
                .WithOne(bus => bus.Empresa);
                //.OnDelete(DeleteBehavior.Cascade);
            });
        } 
    }
}
