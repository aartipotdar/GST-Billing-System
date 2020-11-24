using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BE;
using System.Data;

namespace BAL
{
    public class BAVendor2
    {

         public int BAaddVendorDetails(VendorEntities objVendorDetails)
         {
             DAVendor objaddvendorDA = new DAVendor();
             int returnValue = objaddvendorDA.DAaddVendorDetails(objVendorDetails);
             return returnValue;
         }
         public DataTable BAGetTable()
         {
             DAVendor objVendor = new DAVendor();
             return objVendor.DAGetTable();
         }

         public int BA_DeleteVendor(VendorEntities objVendordetails)
         {
             DAVendor objVendorDA = new DAVendor();
             return objVendorDA.DA_DeleteVendor(objVendordetails);

         }
         public int BA_ValidateVendor(VendorEntities objVendordetails)
         {
             DAVendor objVendorDA = new DAVendor();
             return objVendorDA.DA_ValidateVendor(objVendordetails);
         }
         public int BA_EditVendor(VendorEntities objVendordetails)
         {
             DAVendor objVendorDA = new DAVendor();
             return objVendorDA.DA_EditVendor(objVendordetails);

         }

    }
}
