using NesteCommercy.Shared.ObjectHelper;
using NesteCommercy.Shared.Services.APIs.Dto;

namespace NesteCommercy.Shared.Services.APIs
{
    public interface IShopCartAppService
    {
        public Task<PageShopCartDto> GetDatasShopCartPage(OptionShopCartDto options);
        public Task<int> SaveCart(SaveCartDto dto);
    }
}
