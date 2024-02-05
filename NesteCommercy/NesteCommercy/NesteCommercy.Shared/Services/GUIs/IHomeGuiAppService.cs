using NesteCommercy.Shared.Services.GUIs.Dto;

namespace NesteCommercy.Shared.Services.GUIs
{
    public interface IHomeGuiAppService
    {
        public Task<HomePageGuiDto> GetDatasHomePage();
    }
}
