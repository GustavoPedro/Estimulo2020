using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EstimuloBackEnd.Models
{
    public class Company
    {
        public int Id { get; set; }

        [Required]
        public string RazaoSocial { get; set; }

        [Required]
        public string Cnpj { get; set; }

        [Required]
        public int Idade { get; set; }

        [Required]
        public bool NegocioFamiliar { get; set; }

        [Required]
        public string Telefone { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        public string SiteRedeSocial { get; set; }

        [ForeignKey("Endereco")]
        public int EnderecoId { get; set; }
        public Address Endereco { get; set; }

        [ForeignKey("Usuario")]
        public int UserId { get; set; }
        public User Usuario { get; set; }
        public Business Negocio { get; set; }
        public Pandemic Pandemia { get; set; }

        public Motivation Motivacao { get; set; }

        public List<BusinessMonitoring> AcompanhamentoNegocio { get; set; }
    }
}
