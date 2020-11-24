using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BE;


namespace BAL
{
     public class BALogin
    {
        public int BAaddLoginDetails(LoginEntities objLoginDetails)
        {
            DALogin objaddLoginDA = new DALogin();
            int returnValue = objaddLoginDA.DAaddLoginDetails(objLoginDetails);
            return returnValue;
        }

    }
}
