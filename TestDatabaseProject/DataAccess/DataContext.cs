using Microsoft.EntityFrameworkCore;
using System.Reflection;
using TestDatabaseProject.DataAccess.Entities;

namespace TestDatabaseProject.DataAccess
{
    public class DataContext : DbContext
    {
        private const string connectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=SampleDatabase;Integrated Security=True";

        public DbSet<Product> Products { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(connectionString);

            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
            base.OnModelCreating(modelBuilder);
        }
    }
}
