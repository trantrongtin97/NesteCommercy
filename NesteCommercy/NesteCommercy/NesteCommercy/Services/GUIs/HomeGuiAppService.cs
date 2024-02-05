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
                Name = t.Name
            }).ToListAsync();
            return dto;
        }
    }
}
