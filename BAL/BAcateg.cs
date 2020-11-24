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
    public class BAcateg
    {
        public int BAAddcategorydetails(Categories objcategorydetails)
        {
            DAcateg objcategDA = new DAcateg();
            int returnValue = objcategDA.DAAddcategorydetails(objcategorydetails);
            return returnValue;
        }

        public DataTable BAGetTable()
        {
            DAcateg objCateg = new DAcateg();
            return objCateg.DAGetTable();
        }

        public int BA_DeleteCategory(Categories objcategorydetails)
        {
            DAcateg objcategDA = new DAcateg();
            return objcategDA.DA_DeleteCategory(objcategorydetails);

        }

        public int BA_ValidateCategory(Categories objcategoriesdetails)
        {
            DAcateg objcategDA = new DAcateg();
            return objcategDA.DA_ValidateCategory(objcategoriesdetails);
        }
    }
}
