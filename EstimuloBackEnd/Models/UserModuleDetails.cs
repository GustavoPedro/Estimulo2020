using System.ComponentModel.DataAnnotations.Schema;

namespace EstimuloBackEnd.Models
{
    public class UserModuleDetails
    {
        public int Id { get; set; }

        [ForeignKey("User")]
        public int UserId { get; set; }
        public User User { get; set; }

        [ForeignKey("ModuleDetails")]
        public int ModuleDetailsId { get; set; }
        public ModuleDetails ModuleDetails { get; set; }

        public double Progress { get; set; }
    }
}
