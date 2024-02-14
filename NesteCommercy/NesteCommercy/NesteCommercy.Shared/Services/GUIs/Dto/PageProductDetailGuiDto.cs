namespace NesteCommercy.Shared.Services.GUIs.Dto
{
    public class PageProductDetailGuiDto
    {
        public ProductDetailGuiDto? ProductData { get; set; }
        public List<CategoryDto>? Categories { get; set; }
        public List<ProductGuiDto>? NewProducts { get; set; }
        public List<ProductGuiDto>? RelatedProducts { get; set; }
    }
}
