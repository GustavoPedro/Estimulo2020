using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EstimuloBackEnd.Models
{
    public class Motivation
    {
        public int Id { get; set; }

        [Required]
        public int Importancia { get; set; }
        [Required]
        public string TempoDedicacaoNegocio { get; set; }
        [Required]
        public string DedicarMinimoTresHoras { get; set; }
        [Required]
        public string MotivoParticipacao { get; set; }

        [ForeignKey("Empresa")]
        public int EmpresaId { get; set; }
        public Company Empresa { get; set; }
    }
}
