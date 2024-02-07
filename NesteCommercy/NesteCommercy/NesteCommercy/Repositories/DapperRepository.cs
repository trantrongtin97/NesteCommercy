using Microsoft.Data.SqlClient;
using System.Data;

namespace NesteCommercy.Repository
{
    public class DapperRepository
    {
        private readonly IConfiguration _configuration;
        private readonly string _connectionString;
        public DapperRepository(IConfiguration configuration)
        {
            _configuration = configuration;
            _connectionString = _configuration.GetConnectionString("Default");
        }
        public IDbConnection CreateConnection()
            => new SqlConnection(_connectionString);
    }
}
