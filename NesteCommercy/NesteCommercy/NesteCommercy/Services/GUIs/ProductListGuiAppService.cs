using Microsoft.EntityFrameworkCore;
using NesteCommercy.Domain.Models;
using NesteCommercy.EfCore.DbContexts;
using NesteCommercy.Repository;
using NesteCommercy.Shared;
using NesteCommercy.Shared.Repositories;
using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared.Services.GUIs.Dto;
using System.Net;

namespace NesteCommercy.Services.GUIs
{
    public class ProductListGuiAppService : IProductListGuiAppService
    {
        private readonly NesteCommercyDbContext _dbContext;
        private readonly IProductListRepository _productListRepository;
        public ProductListGuiAppService(NesteCommercyDbContext dbContext, IProductListRepository productListRepository)
        {
            _dbContext = dbContext;
            _productListRepository = productListRepository;
        }

        public async Task<PageProductDetailGuiDto> GetDatasProductDetailPage(int id)
        {
            var dto = new PageProductDetailGuiDto();
            dto.Categories = await _dbContext.Categories.Select(t => new CategoryDto()
            {
                Id = t.Id,
                Name = t.Name,
                ImgUrl = t.ImgUrl,
            }).Take(5).ToListAsync();
            var qrProduct = from mp in _dbContext.ManagerVendors.AsQueryable()
                            join p in _dbContext.Products.AsQueryable() on mp.ProductId equals p.Id
                            join c in _dbContext.Categories.AsQueryable() on p.CategoryID equals c.Id into c_df
                            from cdf in c_df.DefaultIfEmpty()
                            join vd in _dbContext.Vendors.AsQueryable() on mp.VendorId equals vd.Id into vd_df
                            from vddf in vd_df.DefaultIfEmpty()
                            join pt in _dbContext.ProductTags.AsQueryable() on mp.ProductTagID equals pt.Id into pt_df
                            from ptdf in pt_df.DefaultIfEmpty()
                            join desp in _dbContext.DescriptionProducts.AsQueryable() on mp.DescriptionProductId equals desp.Id
                            where p.Id == id
                            select new ProductDetailGuiDto()
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
                                PromoCountDownDate = mp.PromoCountDownDate,
                                TopMainDes  = desp.TopMainDes,
                                TypeOfPacking = desp.TypeOfPacking,
                                ColorDesProduct = desp.Color,
                                QuantityPerCase = desp.QuantityPerCase,
                                EthylAlcohol = desp.EthylAlcohol,
                                PieceInOne = desp.PieceInOne,
                                BotMainDes = desp.BotMainDes,
                                PackagingAndDelivery = desp.PackagingAndDelivery,
                                SuggestedUse = desp.SuggestedUse,
                                OtherIngredients = desp.OtherIngredients,
                                Warnings = desp.Warnings,
                                DescriptionInProduct = vddf.DescriptionInProduct,
                                LogoUrl = vddf.LogoUrl,
                                Since = vddf.Since,
                                RatingVendor = vddf.Rating,
                                Address = vddf.Address,
                                CallUs = vddf.CallUs,
                                RatingInProduct = vddf.RatingInProduct,
                                ShipOnTime = vddf.ShipOnTime,
                                ChatResponse = vddf.ChatResponse,
                            };
            dto.RelatedProducts =
            [
                .. qrProduct.Take(4).Select(t=>new ProductGuiDto()
                            {
                                Id = t.Id,
                                ProductName = t.ProductName,
                                Rating = t.Rating,
                                Price = t.Price,
                                DiscountPrice = t.DiscountPrice,
                                ContentTag = t.ContentTag,
                                StateTag = t.StateTag,
                                ImgUrl1 = t.ImgUrl1,
                                ImgUrl2 = t.ImgUrl2
                            }),
            ];
            dto.NewProducts =
            [
                .. qrProduct.Take(3).Select(t => new ProductGuiDto()
                            {
                                Id = t.Id,
                                ProductName = t.ProductName,
                                Rating = t.Rating,
                                Price = t.Price,
                                ImgUrl1 = t.ImgUrl1
                            }),
            ];
            return dto;
        }

        public async Task<PageProductListGuiDto> GetDatasProductListPage(OptionsProductListGuiDto options)
        {
            var dto = new PageProductListGuiDto();
            dto.Categories = await _dbContext.Categories.Select(t => new CategoryDto()
            {
                Id = t.Id,
                Name = t.Name,
                ImgUrl = t.ImgUrl,
            }).Take(5).ToListAsync();
            dto.Datas = (await _productListRepository.GetListProduct(options)).ToList();
            dto.DealOfDay = dto.Datas.Take(4).ToList();
            dto.NewProducts = dto.Datas.Take(3).ToList();
            dto.TotalCount = (await _productListRepository.GetCountListProduct());
            return dto;
        }
    }
}
