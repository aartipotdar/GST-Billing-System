using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
     public class SaleEntities
    {
        //public int SaleId { get; set; }
        public int BillNo { get; set; }
        public string Date { get; set; }
        public string CustomerName { get; set; }
        public string MobileNo { get; set; }
        public string EmailId { get; set; }
        public int GSTNo { get; set; }
        public string Address { get; set; }
        public string Product { get; set; }
        public int Price { get; set; }
        public int Quantity { get; set; }
        public string GSTType { get; set; }
        public int GSTPercentage { get; set; }
        public int Total { get; set; }
        public string PlaceToSupply { get; set; }
        public int Transport { get; set; }
        public int OtherCharges { get; set; }
        public int RoundOff  { get; set; }
        public int TotalAmount { get; set; }
        public  int Discount { get; set; }
        public string RupeesInWord { get; set; }
        public string Paymentmtd { get; set; }
        
    }
}
