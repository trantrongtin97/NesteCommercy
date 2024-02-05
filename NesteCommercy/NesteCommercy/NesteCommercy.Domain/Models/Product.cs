using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_Product")]
    public class Product
    {
        public int Id { get; set; }
        [MaxLength(500)]
        public string Name { get; set; }
        public int CategoryID { get; set; }
        public string? ShortDescription { get; set; }
        public decimal? Price { get; set; }
        public string? ImgUrl1 { get; set; }
        public string? ImgUrl2 { get; set; }
        public string? ImgUrl3 { get; set; }
        public string? ImgUrl4 { get; set; }
        public string? ImgUrl5 { get; set; }
        public string? ImgUrl6 { get; set; }
        public string? ImgUrl7 { get; set; }
        public double? Rating { get; set; }
        [MaxLength(500)]
        public string? Type { get; set; }
        [MaxLength(500)]
        public string? MFG { get; set; }
        [MaxLength(500)]
        public string? LIFE { get; set; }
        [MaxLength(500)]
        public string? SKU { get; set; }
        [MaxLength(500)]
        public string? Tags { get; set; }
        [MaxLength(500)]
        public string? StandUp { get; set; }
        [MaxLength(500)]
        public string? Folded_wo { get; set; }
        [MaxLength(500)]
        public string? Folded_w { get; set; }
        [MaxLength(500)]
        public string? DoorPassThrough { get; set; }
        [MaxLength(500)]
        public string? Frame { get; set; }
        [MaxLength(500)]
        public string? Weight_wo { get; set; }
        [MaxLength(500)]
        public string? WeightCapacity { get; set; }
        [MaxLength(500)]
        public string? Width { get; set; }
        [MaxLength(500)]
        public string? HandleHeight { get; set; }
        [MaxLength(500)]
        public string? Wheels { get; set; }
        [MaxLength(500)]
        public string? SeatBackHeight { get; set; }
        [MaxLength(500)]
        public string? HeadRoom { get; set; }
        [MaxLength(500)]
        public string? Color { get; set; }
        [MaxLength(500)]
        public string? Size { get; set; }
    }
}
