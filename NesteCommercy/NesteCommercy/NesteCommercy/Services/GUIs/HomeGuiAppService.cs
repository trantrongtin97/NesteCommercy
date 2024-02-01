using NesteCommercy.Shared.Services.GUIs;

namespace NesteCommercy.Services.GUIs
{
    public class HomeGuiAppService : IHomeGuiAppService
    {
        public Task<List<string>> GetDatas()
        {
            return Task.FromResult(new List<string>() { "a", "b" });
        }
    }
}
