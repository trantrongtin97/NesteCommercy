using System.ComponentModel.DataAnnotations.Schema;

namespace NesteCommercy.Domain.Models
{
    [Table("tbl_EC_ManagerVendor")]
    public class ManagerVendor
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public int VendorId { get; set; }
        public int InStockQuantity { get; set; }
        public int SizeWeightJoinID { get; set; }
        public decimal PriceSell { get; set; }
        public int? ProductTagID { get; set; }
        public int? DiscountPercent { get; set; }
        public decimal? PriceDiscount { get; set; }
        public int? InStore { get; set; } //Null,0: disable,1: enable
        public DateTime? CreateDate { get; set; }
        public int? DealsOfDayPromotion { get; set; }  //Null,0: disable,1: enable,defaul: 0,null
        public DateTime? PromoCountDownDate { get; set; }
        public int? DescriptionProductId { get; set; }
    }
}
