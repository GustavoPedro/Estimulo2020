using System.ComponentModel.DataAnnotations;

namespace EstimuloBackEnd.Models
{
    public class Address
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Cep { get; set; }
        [Required]
        public string Rua { get; set; }
        [Required]
        public string Bairro { get; set; }
        [Required]
        public string Cidade { get; set; }
        [Required]
        [StringLength(2)]
        public string Uf { get; set; }
        public string Complemento { get; set; }
        [Required]
        public string Numero { get; set; }
        public User Usuario { get; set; }

        public Company Empresa { get; set; }
    }
}