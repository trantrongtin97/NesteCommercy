using NesteCommercy.Shared.Services.GUIs;
using System.Net.Http.Json;
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
        public async Task<List<string>> GetDatas()
        {
            var response = await _httpClient.GetAsync("api/home");
            var responseBody = await response.Content.ReadAsStringAsync();
            var jsonSerializerOptions = new JsonSerializerOptions() { PropertyNameCaseInsensitive = true };
            return JsonSerializer.Deserialize<List<string>>(responseBody, jsonSerializerOptions);
        }
    }
}
