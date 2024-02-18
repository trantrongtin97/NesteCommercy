using Microsoft.EntityFrameworkCore;
using NesteCommercy.Domain.Models;
using NesteCommercy.EfCore.DbContexts;
using NesteCommercy.Shared.Services.APIs;
using NesteCommercy.Shared.Services.APIs.Dto;

namespace NesteCommercy.Services.APIs
{
    public class ShopCartAppService : IShopCartAppService
    {
        private readonly NesteCommercyDbContext _dbContext;
        public ShopCartAppService(NesteCommercyDbContext dbContext)
        {
            _dbContext = dbContext;
        }
        public async Task<PageShopCartDto> GetDatasShopCartPage(OptionShopCartDto options)
        {
            var lsResult = new List<ItemCartDto>();
            var lsTem = options.localStoreItemCart.Select(t=>t.Id);
            var qrProduct = from mp in _dbContext.ManagerVendors.AsQueryable()
                            join p in _dbContext.Products.AsQueryable() on mp.ProductId equals p.Id
                            where p.Price != null && lsTem.Contains(p.Id)
                            select new ItemCartDto()
                            {
                                Id = p.Id,
                                ProductName = p.Name,
                                Img = p.ImgUrl1 ?? "",
                                Price = p.Price ?? 0,
                                Quantity = 0,
                                SubTotal = 0,
                            };
            
            if (qrProduct == null || !qrProduct.Any())
            {
                return new PageShopCartDto() { Products = [] };
            }
            else
            {
                foreach (var item in options.localStoreItemCart)
                {
                    var obj = await qrProduct.FirstOrDefaultAsync(t => t.Id == item.Id);
                    if (obj != null)
                    {
                        lsResult.Add(new ItemCartDto()
                        {
                            Id = obj.Id,
                            ProductName = obj.ProductName,
                            Img = obj.Img,
                            Price = obj.Price,
                            Quantity = item.Quantity,
                            SubTotal = obj.Price * item.Quantity,
                        });
                    }
                }
                return new PageShopCartDto() { Products = lsResult };
            }
        }

        public async Task<int> SaveCart(SaveCartDto dto)
        {
            try
            {
                var mngCart = new ManagerCart()
                {
                    SubTotal = dto.SubTotal,
                    Shipping = dto.Shipping,
                    Total = dto.Total,
                    EstimateFor = "Default"
                };
                await _dbContext.ManagerCarts.AddAsync(mngCart);
                await _dbContext.SaveChangesAsync();
                var lsMngItem = dto.Items.Select(t => new ManagerCartItems()
                {
                    ManagerCartId = mngCart.Id,
                    ProductId = t.Id,
                    Quantity = t.Quantity,
                    SizeWeightJoinID = 0
                });
                await _dbContext.AddRangeAsync(lsMngItem);
                await _dbContext.SaveChangesAsync();
            }
            catch
            {
                return 0;
            }
            return 1;
        }
    }
}
