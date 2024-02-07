using Microsoft.AspNetCore.Mvc;
using NesteCommercy.Shared.Services.GUIs.Dto;
using NesteCommercy.Shared.Services.GUIs;
using NesteCommercy.Shared;

namespace NesteCommercy.Controllers
{
    [Route("api/product-list")]
    [ApiController]
    public class ProductListController : Controller
    {
        private readonly IProductListGuiAppService _productGuiAppService;
        public ProductListController(IProductListGuiAppService productGuiAppService)
        {
            _productGuiAppService = productGuiAppService;
        }
        [HttpGet("GetData")]
        public async Task<ActionResult<PageProductListGuiDto>> GetData(OptionsProductListGuiDto options)
        {
            return await _productGuiAppService.GetDatasProductListPage(options);
        }
    }
}
