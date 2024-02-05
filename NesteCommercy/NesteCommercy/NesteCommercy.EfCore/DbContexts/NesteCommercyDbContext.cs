using Microsoft.EntityFrameworkCore;
using NesteCommercy.Domain.Models;

namespace NesteCommercy.EfCore.DbContexts
{
    public class NesteCommercyDbContext :DbContext
    {
        DbSet<User> Users { get; set; }
        DbSet<Category> Categories { get; set; }
        DbSet<Vendor> Vendors { get; set; }
        DbSet<Product> Products { get; set; }
        DbSet<DescriptionProduct> DescriptionProducts { get; set; }
        DbSet<SizeWeight> SizeWeights { get; set; }
        DbSet<SizeWeightJoin> SizeWeightJoins { get; set; }
        DbSet<ProductTag> ProductTags { get; set; }
        DbSet<ManagerVendor> ManagerVendors { get; set; }
        DbSet<ManagerCart> ManagerCarts { get; set; }
        DbSet<ManagerCartItems> ManagerCartItems { get; set; }
        public NesteCommercyDbContext(DbContextOptions<NesteCommercyDbContext> options) : base(options) 
        { 

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<User>().HasKey(x => x.Id);
            modelBuilder.Entity<Category>().HasKey(x => x.Id);
            modelBuilder.Entity<Vendor>().HasKey(x => x.Id);
            modelBuilder.Entity<Product>().HasKey(x => x.Id);
            modelBuilder.Entity<DescriptionProduct>().HasKey(x => x.Id);
            modelBuilder.Entity<SizeWeight>().HasKey(x => x.Id);
            modelBuilder.Entity<SizeWeightJoin>().HasKey(x => x.Id);
            modelBuilder.Entity<ProductTag>().HasKey(x => x.Id);
            modelBuilder.Entity<ManagerVendor>().HasKey(x => x.Id);
            modelBuilder.Entity<ManagerCart>().HasKey(x => x.Id);
            modelBuilder.Entity<ManagerCartItems>().HasKey(x => x.Id);
        }
    }
}
