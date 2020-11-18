using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EstimuloBackEnd.Models
{
    public class ModuleDetails
    {
        public int Id { get; set; }
        [Required]
        public string Tipo { get; set; }
        public string Link { get; set; }

        [Required]
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public byte[] Arquivo { get; set; }


        [ForeignKey("Modulo")]
        public int ModuloId { get; set; }

        public Module Modulo { get; set; }
        public List<UserModuleDetails> UsersModulesDetails { get; set; }
    }
}
