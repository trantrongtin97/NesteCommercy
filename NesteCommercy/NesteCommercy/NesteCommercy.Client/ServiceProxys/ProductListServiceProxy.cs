using NesteCommercy.Shared;
using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared.Services.GUIs.Dto;
using System.Text.Json;

namespace NesteCommercy.Client.ServiceProxys
{
    public class ProductListServiceProxy : IProductListGuiAppService
    {
        private readonly HttpClient _httpClient;
        public ProductListServiceProxy(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        public Task<PageProductDetailGuiDto> GetDatasProductDetailPage(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<PageProductListGuiDto> GetDatasProductListPage(OptionsProductListGuiDto options)
        {
            var response = await _httpClient.GetAsync("api/product-list");
            var responseBody = await response.Content.ReadAsStringAsync();
            var jsonSerializerOptions = new JsonSerializerOptions() { PropertyNameCaseInsensitive = true };
            var a = JsonSerializer.Deserialize<PageProductListGuiDto>(responseBody, jsonSerializerOptions);
            return a;
        }
    }
}
