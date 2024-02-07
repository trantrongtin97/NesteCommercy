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
        public async Task<ActionResult<PageProductListGuiDto>> GetData()
        {
            return await _productGuiAppService.GetDatasProductListPage(new OptionsProductListGuiDto()
            {
                Skip = 0,
                Take = 10,
                SortBy = 0
            });
        }
    }
}
