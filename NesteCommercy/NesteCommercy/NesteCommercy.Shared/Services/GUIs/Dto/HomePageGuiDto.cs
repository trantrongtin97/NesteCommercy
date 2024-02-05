namespace NesteCommercy.Shared.Services.GUIs.Dto
{
    public class HomePageGuiDto
    {
        public List<CategoryDto>? Categories { get; set; }
        public List<ProductGuiDto>? PopularProducts { get; set; }
        public List<DailyBestSell>? DailyBestSell { get; set; }
        public List<ProductGuiDto>? DealOfDay { get; set; }
        public List<ProductGuiDto>? TopSelling { get; set; }
        public List<ProductGuiDto>? Trending { get; set; }
        public List<ProductGuiDto>? RecentlyAdded { get; set; }
        public List<ProductGuiDto>? TopRated { get; set; }
    }
    public class DailyBestSell
    {
        public List<ProductGuiDto>? Featured {  get; set; }
        public List<ProductGuiDto>? Popular { get; set; }
        public List<ProductGuiDto>? NewAdded { get; set; }
    }
}
