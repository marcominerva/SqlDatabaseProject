using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using TestDatabaseProject.DataAccess.Entities;

namespace TestDatabaseProject.DataAccess.Configurations
{
    public class CategoryConfiguration : IEntityTypeConfiguration<Category>
    {
        public void Configure(EntityTypeBuilder<Category> builder)
        {
            builder.ToTable("Categories");
            builder.HasKey(x => x.Id);
            builder.Property(x => x.Id).ValueGeneratedOnAdd();

            builder.Property(x => x.Name).HasMaxLength(80).IsRequired();

            builder.HasMany(x => x.Products).WithOne(x => x.Category).HasForeignKey(x => x.CategoryId);
        }
    }
}
