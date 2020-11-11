using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EstimuloBackEnd.Models
{
    public class Module
    {
        public int Id { get; set; }

        public string Nome { get; set; }

        public string Descricao { get; set; }

        public byte[] Imagem { get; set; }


        public List<ModuleDetails> ModuleDetails { get; set; }
    }
}
