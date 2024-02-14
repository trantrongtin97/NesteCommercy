using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared.Services.GUIs.Dto;
using System.Text.Json;

namespace NesteCommercy.Client.ServiceProxys
{
    public class HomeGuiServiceProxy : IHomeGuiAppService
    {
        private readonly HttpClient _httpClient;
        public HomeGuiServiceProxy(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        public async Task<HomePageGuiDto> GetDatasHomePage()
        {
            var response = await _httpClient.GetAsync("api/home/GetData");
            var responseBody = await response.Content.ReadAsStringAsync();
            var jsonSerializerOptions = new JsonSerializerOptions() { PropertyNameCaseInsensitive = true };
            return JsonSerializer.Deserialize<HomePageGuiDto>(responseBody, jsonSerializerOptions);
        }
    }
}
