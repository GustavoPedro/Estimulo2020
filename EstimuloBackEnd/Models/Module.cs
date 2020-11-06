using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EstimuloBackEnd.Models
{
    public class Module
    {
        public int ModuleId { get; set; }

        public List<ModuleDetails> ModuleDetails { get; set; }
    }
}
