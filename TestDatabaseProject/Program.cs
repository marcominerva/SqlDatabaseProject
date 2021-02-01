using Microsoft.EntityFrameworkCore;
using TestDatabaseProject.DataAccess;

var dataContext = new DataContext();
var productsCount = await dataContext.Products.CountAsync();