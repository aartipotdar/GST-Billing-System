using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BE;
using BAL;

namespace GSTBillingSystem
{
    public partial class demo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            LoginEntities objLoginDetails = new LoginEntities();


            objLoginDetails.UserName = UserName.Text;
            objLoginDetails.Password = Password.Text;

            //BAL
            BALogin objLoginBA = new BALogin();
            int rValue = objLoginBA.BAaddLoginDetails(objLoginDetails);
            if (rValue > 0)
            {
                Response.Redirect("Category.aspx");
            }
            else
            {
                Response.Write("<script>alert('UserName or Password not matched');</script>");

            }
        }
    }
}