using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuizPSD.Factory
{
    public class ProductFactory
    {
        public static Product createProduct(String name, String category, int price, int stock, 
            String image, String desc) =>
            new Product()
            {
                ProductName = name,
                ProductCategory = category,
                ProductPrice = price,
                ProductStock = stock,
                ProductPicture = image,
                ProductDescription = desc
            };
    }
}