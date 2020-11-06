using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace EstimuloBackEnd.Models
{
    public class ModuleDetails
    {
        public int Id { get; set; }

        [ForeignKey("Modulo")]
        public int ModuloId { get; set; }

        public Module Modulo { get; set; }
        public List<UserModuleDetails> UsersModulesDetails { get; set; }
    }
}
