using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EstimuloBackEnd.Models
{
    public class Pandemic
    {
        public int Id { get; set; }

        [Required]
        public string Emprestimo { get; set; }        
        public string LinhaEmprestimo { get; set; }

        [Required]
        public bool ProgManutEmprego { get; set; }

        [Required]
        public int QtdFuncDemitidos  { get; set; }
        [Required]
        public decimal PercentReducaoFaturamento  { get; set; }

        [Required]
        public string FiliaisPerdidasPandemia { get; set; }

        [Required]
        public string FiliaisCidades { get; set; }

        [Required]
        public bool Franquia { get; set; }
        [Required]
        public bool ApoioPandemia { get; set; }

        [Required]
        public bool FornecedorEncContrato { get; set; }       

        [ForeignKey("Empresa")]
        public int EmpresaId { get; set; }
        public Company Empresa { get; set; }
    }
}
