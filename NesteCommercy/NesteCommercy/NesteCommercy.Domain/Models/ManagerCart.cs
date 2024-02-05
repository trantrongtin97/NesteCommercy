using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_ManagerCart")]
    public class ManagerCart
    {
        public int Id { get; set; }
        public decimal SubTotal { get; set; }
        public decimal Shipping { get; set; }
        public string? EstimateFor { get; set; }
        public decimal Total { get; set; }

    }
}
