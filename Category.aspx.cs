using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BE;
using BAL;
using System.Data;
using System.Configuration;


namespace GSTBillingSystem
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTableDetails();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int validate = 0;
            Categories objcategoryDetails = new Categories();
            objcategoryDetails.CategoryName = CategoryName.Text;
            //objcategoryDetails.CategoryShortname = CategoryShortName.Text;

            BAcateg objCategBA = new BAcateg();
            //BAL
            validate = objCategBA.BA_ValidateCategory(objcategoryDetails);
            if (validate > 0)
            {
                Response.Write("<script> alert('Data already exist!')</script>");
            }
            else
            {
                int rValue = objCategBA.BAAddcategorydetails(objcategoryDetails);
                if (rValue > 0)
                {
                    Response.Write("<script>alert('success')</script>");

                    GetTableDetails();
                }
                else
                {
                    Response.Write("<script>alert('Error')</script>");
                }
            }

        }
        public void GetTableDetails()
        {
            BAcateg obj_BACateg = new BAcateg();
            DataTable dt = new DataTable();
            dt = obj_BACateg.BAGetTable();
            gridview1.DataSource = dt;
            gridview1.DataBind();
        }




       
        protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CategoryId = Convert.ToInt16(gridview1.DataKeys[e.RowIndex].Value);

            Categories obj_BECategory = new Categories();
            obj_BECategory.CategoryId = CategoryId;

            BAcateg obj_BACategory = new BAcateg();
            int val = obj_BACategory.BA_DeleteCategory(obj_BECategory);

            if (val > 0)
            {
                Response.Write("<script>alert('Category deleted successfully')</script>");
                GetTableDetails();
            }
            else
            {
                Response.Write("<script>alert('Error Occured')</script>");
            }
        }
    }
}