namespace NesteCommercy.Shared.Services.GUIs.Dto
{
    public class ProductGuiDto
    {
        public int Id { get; set; }
        public int? CategoryId { get; set; }
        public string? CategoryName { get; set; }
        public double? Rating { get; set; }
        public int? VendorId { get; set; }
        public string? VendorName { get; set; }
        public int? InStockQuantity { get; set; }
        public decimal? Price { get; set; }
        public decimal? DiscountPrice { get; set; }
        public string? ContentTag { get; set; }
        public string? StateTag { get; set; }
        public string? ImgUrl1 { get; set; }
        public string? ImgUrl2 { get; set; }
        public DateTime? PromoCountDownDate { get; set; }
    }
}
