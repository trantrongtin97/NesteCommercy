using NesteCommercy.Shared.Services.GUIs.Dto;

namespace NesteCommercy.Shared.Repositories
{
    public interface IProductListRepository
    {
        public Task<IEnumerable<ProductGuiDto>> GetListProduct(OptionsProductListGuiDto options);
        public Task<int> GetCountListProduct();
    }
}
