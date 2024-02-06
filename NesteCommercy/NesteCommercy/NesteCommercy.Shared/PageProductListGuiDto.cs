using NesteCommercy.Shared.Services.GUIs.Dto;

namespace NesteCommercy.Shared
{
    public class PageProductListGuiDto : PageAndSort<ProductGuiDto>
    {
        public List<CategoryDto>? Categories { get; set; }
        public List<ProductGuiDto>? DealOfDay { get; set; }
        public List<ProductGuiDto>? NewProducts { get; set; }
    }
}
