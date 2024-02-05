using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_ProductTag")]
    public class ProductTag
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public string State { get; set; }
    }
}
