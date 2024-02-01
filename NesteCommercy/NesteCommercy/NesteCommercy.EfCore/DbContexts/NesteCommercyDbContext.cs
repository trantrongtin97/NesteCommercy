using Microsoft.EntityFrameworkCore;

namespace NesteCommercy.EfCore.DbContexts
{
    public class NesteCommercyDbContext :DbContext
    {
        public NesteCommercyDbContext(DbContextOptions<NesteCommercyDbContext> options) : base(options) 
        { 

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
