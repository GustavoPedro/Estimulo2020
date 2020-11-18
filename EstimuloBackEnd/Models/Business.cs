using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;


namespace EstimuloBackEnd.Models
{
    public class Business
    {
        public int Id { get; set; }
        [Required]
        public int NumeroFuncionarios { get; set; }
        [Required]
        public string FaturamentoAntesCrise { get; set; }
        [Required]
        public string SetorAtuacao { get; set; }
        [Required]
        public string Nicho { get; set; }
        [Required]
        public string EspecialidadesAcessoria { get; set; }

        [ForeignKey("Empresa")]
        public int EmpresaId { get; set; }
        public Company Empresa { get; set; }
    }
}
