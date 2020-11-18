using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace EstimuloBackEnd.Models
{
    public class BusinessMonitoring
    {
        public int Id { get; set; }
        [Required]
        public DateTime DataPreenchimento { get; set; }
        [Required]
        public string Status {get;set;}
        [Required]
        public string QtdCaixaSubiu { get; set; }
        [Required]
        public bool FluxoVendasAumentou { get; set; }
        
        [Required]
        public bool NClientesAumentou { get; set; }

        [Required]
        public string GastosAumentaram { get; set; }
        [Required]
        public string FechamentoUltimosMeses { get; set; }
        
        public string ObsNegocio { get; set; }

        [ForeignKey("Empresa")]
        public int EmpresaId { get; set; }
        public Company Empresa { get; set; }
    }
}
