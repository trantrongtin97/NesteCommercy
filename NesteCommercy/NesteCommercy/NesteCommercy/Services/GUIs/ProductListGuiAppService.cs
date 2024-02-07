using Microsoft.EntityFrameworkCore;
using NesteCommercy.EfCore.DbContexts;
using NesteCommercy.Repository;
using NesteCommercy.Shared;
using NesteCommercy.Shared.Repositories;
using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared.Services.GUIs.Dto;

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
        public async Task<PageProductListGuiDto> GetDatasProductListPage(OptionsProductListGuiDto options)
        {
            var dto = new PageProductListGuiDto();
            dto.Categories = await _dbContext.Categories.Select(t => new CategoryDto()
            {
                Id = t.Id,
                Name = t.Name,
                ImgUrl = t.ImgUrl,
            }).Take(10).ToListAsync();
            dto.Datas = (await _productListRepository.GetListProduct(options)).ToList();
            dto.DealOfDay = dto.Datas.Take(4).ToList();
            dto.NewProducts = dto.Datas.Take(3).ToList();
            return dto;
        }
    }
}
