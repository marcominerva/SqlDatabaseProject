using Microsoft.EntityFrameworkCore;
using System;
using TestDatabaseProject.DataAccess;
using TestDatabaseProject.DataAccess.Entities;

var dataContext = new DataContext();
var productsCount = await dataContext.Products.ToListAsync();

var p = new Product { Name = "Ciccio" };
dataContext.Products.Add(p);
await dataContext.SaveChangesAsync();

Console.ReadLine();
