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
     public class BAPurchaseMaster
    {
        public int BAaddPurchaseDetails(PurchaseEntities objPurchaseDetails)
        {
            DApurchaseMaster objPurchaseDA = new DApurchaseMaster();
            int returnValue = objPurchaseDA.DAaddPurchaseDetails(objPurchaseDetails);
            return returnValue;
        }

        public DataTable BAGetTable()
        {
            DApurchaseMaster objPurchase = new DApurchaseMaster();
            return objPurchase.DAGetTable();
        }
        public int BA_ValidatePurchase(PurchaseEntities objPurchasedetails)
        {
            DApurchaseMaster objPurchaseDA = new DApurchaseMaster();
            return objPurchaseDA.DA_ValidatePurchase(objPurchasedetails);
        }
        public DataTable BA_GetVendorDetails(PurchaseEntities objVendorDetails)
        {
            DApurchaseMaster objPurchaseDA = new DApurchaseMaster();
            return objPurchaseDA.DA_VendorDetails(objVendorDetails);
        }
        public DataTable BA_GetProductDetails(PurchaseEntities objProductDetails)
        {
            DApurchaseMaster objPurchaseDA = new DApurchaseMaster();
            return objPurchaseDA.DA_ProductDetails(objProductDetails);
        }
       
        
    }
 }

