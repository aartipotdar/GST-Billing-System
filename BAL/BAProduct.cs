using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using DAL;
using System.Data;

namespace BAL
{
    public class BAProduct
    {
        public int BAaddProductDetails(ProductEntities objProductDetails)
        {
            DAProduct objProductDA = new DAProduct();
            int returnValue = objProductDA.DAaddProductDetails(objProductDetails);
            return returnValue;
        }

        public DataTable BAGetTable()
        {
            DAProduct objProduct = new DAProduct();
            return objProduct.DAGetTable();
        }
        public int BADeleteProduct(ProductEntities objProductdetails)
        {
            DAProduct objProductDA = new DAProduct();
            int returnValue = objProductDA.DADeleteProduct(objProductdetails);
            return returnValue;
        }

        public DataTable BAGetBrand()
        {
            DAProduct objProduct = new DAProduct();
            return objProduct.DAGetBrand();
        }

        public DataTable BA_GetBrandFromCategory(ProductEntities BEProduct)
        {
            DAProduct objProduct = new DAProduct();
            return objProduct.DA_GetBrandFromCategory(BEProduct);
        }

        public int BA_ValidateProduct(ProductEntities objProductdetails)
        {
            DAProduct objProductDA = new DAProduct();
            return objProductDA.DA_ValidateProduct(objProductdetails);
        }
        public DataTable BA_GetSaleReport()
        {
            DASaleMaster objSaleDA = new DASaleMaster();
            return objSaleDA.DA_GetSaleReport();
        }
    }
}
