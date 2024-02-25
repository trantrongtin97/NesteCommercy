using Microsoft.EntityFrameworkCore;
using NesteCommercy.Domain.Models;

namespace NesteCommercy.EfCore.DbContexts
{
    public class NesteCommercyDbContext :DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Vendor> Vendors { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<DescriptionProduct> DescriptionProducts { get; set; }
        public DbSet<SizeWeight> SizeWeights { get; set; }
        public DbSet<SizeWeightJoin> SizeWeightJoins { get; set; }
        public DbSet<ProductTag> ProductTags { get; set; }
        public DbSet<ManagerVendor> ManagerVendors { get; set; }
        public DbSet<ManagerCart> ManagerCarts { get; set; }
        public DbSet<ManagerCartItems> ManagerCartItems { get; set; }
        public DbSet<Contact> Contacts { get; set; }
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
            modelBuilder.Entity<Contact>().HasKey(x => x.Id);
        }
    }
}
