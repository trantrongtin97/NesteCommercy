using Microsoft.EntityFrameworkCore;
using NesteCommercy.EfCore.DbContexts;
using NesteCommercy.Shared;
using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared.Services.GUIs.Dto;

namespace NesteCommercy.Services.GUIs
{
    public class ProductListGuiAppService : IProductListGuiAppService
    {
        private readonly NesteCommercyDbContext _dbContext;
        public ProductListGuiAppService(NesteCommercyDbContext dbContext)
        {
            _dbContext = dbContext;
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
            return dto;
        }
    }
}
