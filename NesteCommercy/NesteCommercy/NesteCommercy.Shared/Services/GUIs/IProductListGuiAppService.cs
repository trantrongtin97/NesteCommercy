using NesteCommercy.Shared.Services.GUIs.Dto;

namespace NesteCommercy.Shared.Services.GUIs
{
    public interface IProductListGuiAppService
    {
        public Task<PageProductListGuiDto> GetDatasProductListPage(OptionsProductListGuiDto options);
        public Task<PageProductDetailGuiDto> GetDatasProductDetailPage(int id);
    }
}
