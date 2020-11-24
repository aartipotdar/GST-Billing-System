using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class customentity
    {
        public int CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string MobileNo { get; set; }
        public string Address { get; set; }
        public string EmailId { get; set; }
        public int CustomerGSTNo { get; set; }
        //public int HSN { get; set; }
        public int FirmId { get; set; }
        public int IsActive { get; set; }
    }
}
