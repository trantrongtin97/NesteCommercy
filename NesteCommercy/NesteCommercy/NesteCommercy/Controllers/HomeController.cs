using Microsoft.AspNetCore.Mvc;
using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared.Services.GUIs.Dto;

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
        [HttpGet("GetData")]
        public async Task<ActionResult<HomePageGuiDto>> GetData()
        {
            return await _homeGuiAppService.GetDatasHomePage();
        }
    }
}
