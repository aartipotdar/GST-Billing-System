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
    public class BASaleMaster
    {
        public int BAGetMaxSaleBillNo()
        {
            DASaleMaster objSaleDA = new DASaleMaster();
            return objSaleDA.DAGetMaxSaleBillNo();
        }
        public int BAaddSaleDetails(SaleEntities objSaleDetails)
        {
            DASaleMaster objSaleDA = new DASaleMaster();
            int returnValue = objSaleDA.DAaddSaleDetails(objSaleDetails);
            return returnValue;
        }

        public DataTable BAGetTable()
        {
            DASaleMaster objSale = new DASaleMaster();
            return objSale.DAGetTable();
        }

        public DataTable BA_SearchName(string str)
        {
            DASaleMaster objSale = new DASaleMaster();
            return objSale.SearchUser(str);
        }
        public int BA_ValidateSale(SaleEntities objSaledetails)
        {
            DASaleMaster objSaleDA = new DASaleMaster();
            return objSaleDA.DA_ValidateSale(objSaledetails);
        }

        public DataTable BA_GetCustomersDetails(SaleEntities objCustomerdetails)
        {
            DASaleMaster objSaleDA = new DASaleMaster();
            return objSaleDA.DA_CustomerDetails(objCustomerdetails);
        }
        public DataTable BA_GetProductDetails(SaleEntities objSaleDetails)
        {
            DASaleMaster objSaleDA = new DASaleMaster();
            return objSaleDA.DA_ProductDetails(objSaleDetails);
        }

        public int BA_SaveSaleOutwards(SaleOutwardsEntities objSaleOutwards)
        {
            return (new DASaleMaster().DA_AddSaleOutwards(objSaleOutwards));
        }

        public DataTable BA_GetProductsBySaleId(int SaleId)
        {
            return (new DASaleMaster().DA_GetProductsBySaleId(SaleId));
        }
    }
}