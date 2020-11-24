using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class SaleOutwardsEntities
    {
        public int saleOutwardsId { get; set; }
        public int saleId { get; set; }
        public int productId { get; set; }
        public int isActive { get; set; }
        public int qnty { get; set; }
    }
}
