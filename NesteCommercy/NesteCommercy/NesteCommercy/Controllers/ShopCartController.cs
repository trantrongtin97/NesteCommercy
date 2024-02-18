using Microsoft.AspNetCore.Mvc;
using NesteCommercy.Shared.Services.APIs;
using NesteCommercy.Shared.Services.APIs.Dto;

namespace NesteCommercy.Controllers
{
    [Route("api/shop-cart")]
    [ApiController]
    public class ShopCartController : Controller
    {
        private readonly IShopCartAppService _shopCartAppService;
        public ShopCartController(IShopCartAppService shopCartAppService)
        {
            _shopCartAppService = shopCartAppService;
        }
        [HttpGet("GetData")]
        public async Task<PageShopCartDto> GetData([FromBody] OptionShopCartDto options)
        {
            return await _shopCartAppService.GetDatasShopCartPage(options);
        }
    }
}
