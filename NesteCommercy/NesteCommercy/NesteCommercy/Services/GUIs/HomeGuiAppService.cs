using Microsoft.EntityFrameworkCore;
using NesteCommercy.Domain.Models;
using NesteCommercy.EfCore.DbContexts;
using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared.Services.GUIs.Dto;

namespace NesteCommercy.Services.GUIs
{
    public class HomeGuiAppService : IHomeGuiAppService
    {
        private readonly NesteCommercyDbContext _dbContext;
        public HomeGuiAppService(NesteCommercyDbContext dbContext)
        {
            _dbContext = dbContext;
        }
        public async Task<HomePageGuiDto> GetDatasHomePage()
        {
            var dto = new HomePageGuiDto();
            dto.Categories = await _dbContext.Categories.Select(t=>new CategoryDto()
            {
                Id = t.Id,
                Name = t.Name,
                ImgUrl = t.ImgUrl,
            }).Take(10).ToListAsync();
            var qrProduct = from mp in _dbContext.ManagerVendors.AsQueryable()
                            join p in _dbContext.Products.AsQueryable() on mp.ProductId equals p.Id
                            join c in _dbContext.Categories.AsQueryable() on p.CategoryID equals c.Id into c_df
                            from cdf in c_df.DefaultIfEmpty()
                            join vd in _dbContext.Vendors.AsQueryable() on mp.VendorId equals vd.Id into vd_df
                            from vddf in vd_df.DefaultIfEmpty()
                            join pt in _dbContext.ProductTags.AsQueryable() on mp.ProductTagID equals pt.Id into pt_df
                            from ptdf in pt_df.DefaultIfEmpty()
                            select new ProductGuiDto()
                            {
                                Id = mp.Id,
                                ProductName = p.Name,
                                CategoryId = cdf.Id,
                                CategoryName = cdf.Name,
                                Rating = p.Rating,
                                VendorId = mp.VendorId,
                                VendorName = vddf.Name,
                                InStockQuantity = mp.InStockQuantity,
                                Price = mp.PriceSell,
                                DiscountPrice = mp.PriceDiscount,
                                ContentTag = ptdf.Content,
                                StateTag = ptdf.State,
                                ImgUrl1 = p.ImgUrl1,
                                ImgUrl2 = p.ImgUrl2,
                                PromoCountDownDate = mp.PromoCountDownDate
                            };
            dto.DailyBestSell = new DailyBestSell();
            foreach (var category in dto.Categories) 
            {
                category.TotalCount = qrProduct.Where(t => t.CategoryId == category.Id).Count();
            }
            dto.PopularProducts = qrProduct.Take(2).ToList();
            dto.DailyBestSell.Featured = qrProduct.Take(2).ToList();
            dto.DailyBestSell.Popular = qrProduct.Take(2).ToList();
            dto.DailyBestSell.NewAdded = qrProduct.Take(2).ToList();
            dto.DealOfDay = qrProduct.Take(4).ToList();
            dto.TopSelling = qrProduct.Take(3).ToList();
            dto.Trending = qrProduct.Take(3).ToList();
            dto.RecentlyAdded = qrProduct.Take(3).ToList();
            dto.TopRated = qrProduct.Take(3).ToList();
            return dto;
        }
    }
}
