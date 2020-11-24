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
     public class BAInward
    {
       // public int BAAddInwarddetails(Inward objInwarddetails)
       //{
       //    DAInward objInwardDA = new DAInward();
       //    int returnValue = objInwardDA.DAAddInwarddetails(objInwarddetails);
       //    return returnValue;
       //}
       public DataTable BAGetTable()
       {
           DAInward objInward = new DAInward();
           return objInward.DAGetTable();
       }
    }
  }

