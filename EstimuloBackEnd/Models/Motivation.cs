using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace EstimuloBackEnd.Models
{
    public class Motivation
    {
        public int Id { get; set; }

        [ForeignKey("Empresa")]
        public int EmpresaId { get; set; }
        public Company Empresa { get; set; }
    }
}
