using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_Category")]
    public class Category
    {
        public int Id { get; set; }
        [MaxLength(500)]
        public string Name { get; set; }
        public string? Description { get; set; }
        public string? ImgUrl { get; set; }
    }
}
