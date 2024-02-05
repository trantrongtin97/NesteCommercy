using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_SizeWeight")]
    public class SizeWeight
    {
        public int Id { get; set; }
        [MaxLength(20)]
        public string Name { get; set; }
    }
}
