using System.ComponentModel.DataAnnotations.Schema;

namespace EstimuloBackEnd.Models
{
    public class Pandemic
    {
        public int Id { get; set; }

        [ForeignKey("Empresa")]
        public int EmpresaId { get; set; }
        public Company Empresa { get; set; }
    }
}
