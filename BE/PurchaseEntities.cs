using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
     public class PurchaseEntities
    {

         public int PurchaseBillNo { get; set; }
         public string PurchaseDate { get; set; }
         public string VendorName { get; set; }
         public string MobileNo { get; set; }
         public  string EmailId { get; set; }
         public  int GSTNo { get; set; }
         public string CompanyName { get; set; }
         public string Product { get; set; }
         public int Price { get; set; }
         public int Quantity { get; set; }
         public string GSTType { get; set; }
         public float GSTPercentage { get; set; }
         public int Total { get; set; }
         public string Transport { get; set; }
         public int TotalAmount { get; set; }
         public int Discount { get; set; }
         public string RupeesInWord { get; set; }
         public string PaymentMethod { get; set; }
         
     }
}
