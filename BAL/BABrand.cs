using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BAL
{
    public class BABrand
    {
        public int BAAddbranddetails(brand objbranddetails)
        {
            DABrand objbrandDA = new DABrand();
            int returnValue = objbrandDA.DAAddbranddetails(objbranddetails);
            return returnValue;
        }

        public DataTable BAGetCategory()
        {
            DABrand objBrand = new DABrand();
            return objBrand.DAGetCategory();
        }

        public DataTable BAGetBrandTable()
        {
            DABrand objBrand = new DABrand();
            return objBrand.DAGetBrandTable();
        }

        public int BADeleteBrand(brand objbranddetails)
        {
            DABrand objbrandDA = new DABrand();
            int returnValue = objbrandDA.DADeleteBrand(objbranddetails);
            return returnValue;
        }

        public int BA_ValidateBrand(brand objBranddetails)
        {
            DABrand objBrandDA = new DABrand();
            return objBrandDA.DA_ValidateBrand(objBranddetails);
        }
    }
}
