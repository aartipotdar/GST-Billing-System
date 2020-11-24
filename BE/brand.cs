using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class brand
    {
        public int BrandId { get; set; }
        public string BrandName { get; set; }
       // public string BrandShortname { get; set; }
        public int CategoryId { get; set; }
        public int IsActive { get; set; }
    }
}
