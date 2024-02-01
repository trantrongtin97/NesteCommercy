using Microsoft.AspNetCore.Mvc;
using NesteCommercy.Shared.Services.GUIs;

namespace NesteCommercy.Controllers
{
    [Route("api/home")]
    [ApiController]
    public class HomeController : ControllerBase
    {
        private readonly IHomeGuiAppService _homeGuiAppService;
        public HomeController(IHomeGuiAppService homeGuiAppService) 
        {
            _homeGuiAppService = homeGuiAppService;
        }
        [HttpGet]
        public async Task<List<string>> GetHome()
        {
            return await _homeGuiAppService.GetDatas();
        }
    }
}
