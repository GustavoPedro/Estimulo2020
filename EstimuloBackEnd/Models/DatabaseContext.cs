using Microsoft.EntityFrameworkCore;

namespace EstimuloBackEnd.Models
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options)
            : base(options)
        {
        }
        public DbSet<User> Usuarios { get; set; }
        public DbSet<Address> Enderecos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Address>()
                .HasOne(a => a.Usuario)
                .WithOne(b => b.Endereco)
                .HasForeignKey<User>(b => b.EnderecoId);

            modelBuilder.Entity<Address>().HasData(new Address { Id = 1, Cep = "32240410", Bairro = "Bandeirantes", Cidade = "Contagem", Rua = "Rua dos Franciscanos", Complemento = "Casa", Numero = "121", Uf = "MG" });

            modelBuilder.Entity<User>().HasData(new User
                {
                    Id = 1,
                    EnderecoId = 1,
                    Email = "gustavopedrodesouza@hotmail.com",                    
                    Nome = "Gustavo Pedro de Souza",
                    Senha = "7227",
                    Telefone = "3333-2948",
                    
                }
            );
        }
    }
}
