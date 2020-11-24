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
   public class BACustomers
    {
       public int BAAddCustomerDetails(customentity objcustomerDetails)
       {
           DACustomer objCustomerDA = new DACustomer();
           int returnValue = objCustomerDA.DAAddcustomerDetails(objcustomerDetails);
           return returnValue;
       }
       public DataTable BAGetTable()
       {
           DACustomer objCustomer = new DACustomer();
           return objCustomer.DAGetTable();
       }
       public int BADeleteCustomer(customentity objCustomerdetails)
       {
           DACustomer objCustomerDA = new DACustomer();
           int returnValue = objCustomerDA.DADeleteCustomer(objCustomerdetails);
           return returnValue;
       }
       public int BA_ValidateCustomer(customentity objCustomerdetails)
       {
           DACustomer objCustomerDA = new DACustomer();
           return objCustomerDA.DA_ValidateCustomer(objCustomerdetails);
       }

      
    }
}
