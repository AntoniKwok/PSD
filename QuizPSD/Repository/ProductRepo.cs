using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuizPSD.Repository
{
    public class ProductRepo
    {

        static RealCycle_DBEntities db = DatabaseSingleton.getInstance();
        
        public static List<Product> getAllProduct() {
            return db.Products.ToList();
        }

        public static List<Product> getTopProduct()
        {
            return db.Products.Take(3).ToList();
        }

        public static void addProduct(Product product) {
            db.Products.Add(product);
            db.SaveChanges();
        }

        public static void updateProduct(int id, String name, String category, int price, 
            int stock, String picturePath, String description) {
            Product product = DatabaseSingleton.getInstance().Products.Where(x => x.ProductId == id).FirstOrDefault();
            product.ProductName = name;
            product.ProductCategory = category;
            product.ProductPrice = price;
            product.ProductStock = stock;
            product.ProductPicture = picturePath;
            product.ProductDescription = description;
            db.SaveChanges();
        }

        public static void deleteProduct(String x) {
            int id = Int32.Parse(x);
            Product product = db.Products.Where(p => p.ProductId == id).FirstOrDefault();
            db.Products.Remove(product);
            db.SaveChanges();
        }


        public static List<Product> filterProduct(String filter)
        {
            return db.Products.Where(p => p.ProductCategory.Equals(filter)).ToList();
        }
    }
}