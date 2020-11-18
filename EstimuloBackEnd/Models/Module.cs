using System.Collections.Generic;

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
