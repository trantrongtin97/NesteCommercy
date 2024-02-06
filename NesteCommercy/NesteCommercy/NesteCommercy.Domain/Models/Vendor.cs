using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_Vendor")]
    public class Vendor
    {
        public int Id { get; set; }
        [MaxLength(500)]
        public string Name { get; set; }
        public string? ShortDescription { get; set; }
        public string? DescriptionInProduct { get; set; }
        public string? LogoUrl { get; set; }
        public string? Since { get; set; }
        public double? Rating { get; set; }
        public string? Address { get; set; }
        public string? CallUs { get; set; }
        public string? TwitterLink { get; set; }
        public string? FaceBookLink { get; set; }
        public string? InsLink { get; set; }
        public string? PrLink { get; set; }
        public double? RatingInProduct { get; set; }
        public double? ShipOnTime { get; set; }
        public double? ChatResponse { get; set; }
    }
}
