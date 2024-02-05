using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_SizeWeightJoin")]
    public class SizeWeightJoin
    {
        public int Id { get; set; }
        public int ProductID { get; set; }
        public int SizeWeightID { get; set; }
    }
}
