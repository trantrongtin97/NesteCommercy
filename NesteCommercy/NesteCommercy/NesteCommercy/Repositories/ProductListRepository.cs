using Dapper;
using NesteCommercy.Shared.Repositories;
using NesteCommercy.Shared.Services.GUIs.Dto;

namespace NesteCommercy.Repository
{
    public class ProductListRepository : IProductListRepository
    {
        private readonly DapperRepository _dapperRepository;
        public ProductListRepository(DapperRepository dapperRepository)
        {
            _dapperRepository = dapperRepository;
        }
        public async Task<IEnumerable<ProductGuiDto>> GetListProduct(OptionsProductListGuiDto options)
        {
            using (var connection = _dapperRepository.CreateConnection())
            {
                var companies = await connection.QueryAsync<ProductGuiDto>("proc_EC_ProductListPage", options,commandType : System.Data.CommandType.StoredProcedure);
                return companies.ToList();
            }
        }
    }
}
