using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace EstimuloBackEnd.Models
{
    public class Company
    {
        public int Id { get; set; }

        [ForeignKey("Endereco")]
        public int EnderecoId { get; set; }
        public Address Endereco { get; set; }

        [ForeignKey("Usuario")]
        public int UserId { get; set; }
        public User Usuario { get; set; }
        public Business Negocio{ get; set; }
        public Pandemic Pandemia { get; set; }
        public Motivation Motivacao { get; set; }

        public List<BusinessMonitoring> AcompanhamentoNegocio { get; set; }
    }
}
