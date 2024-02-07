using Dapper;
using Microsoft.Extensions.Options;
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

        public async Task<int> GetCountListProduct()
        {
            using (var connection = _dapperRepository.CreateConnection())
            {
                return await connection.ExecuteScalarAsync<int>("proc_EC_CountProductListPage", commandType: System.Data.CommandType.StoredProcedure);
            }
        }

        public async Task<IEnumerable<ProductGuiDto>> GetListProduct(OptionsProductListGuiDto options)
        {
            using (var connection = _dapperRepository.CreateConnection())
            {
                var lsProduct = await connection.QueryAsync<ProductGuiDto>("proc_EC_ProductListPage", options,commandType : System.Data.CommandType.StoredProcedure);
                return lsProduct.ToList();
            }
        }
    }
}
