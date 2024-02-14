using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_ManagerCartItems")]
    public class ManagerCartItems
    {
        public int Id { get; set; }
        public int ManagerCartId { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public int SizeWeightJoinID { get; set; }
    }
}
