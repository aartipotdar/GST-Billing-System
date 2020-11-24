using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
     public class ProductEntities
    {
         public int ProductId { get; set; }
         public string ProductName { get; set; }
         public string ProductShortCode { get; set; }
         public int BrandId { get; set; }
         public int CategoryId { get; set; }
         public int SaleRate { get; set; }
         public int PurchaseRate { get; set; }
         public string HSN { get; set; }
         public float GST { get; set; }
         public string Discription { get; set; }
        // public string RowTotal { get; set; }
         public int isInventory { get; set; }
         public int IsActive { get; set; }
         public int StockQuantity { get; set; }
         public string BarCode { get; set; }

         public object Product { get; set; }
    }
}
