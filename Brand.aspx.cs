using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BE;
using BAL;
using System.Data;


namespace GSTBillingSystem
{
    public partial class Brand1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropdown();
                GetTabelDetails();
            }
        }
        public void BindDropdown()
        {
            BABrand objBrand = new BABrand();
            DataTable dt = new DataTable();
            dt = objBrand.BAGetCategory();
            ddlCategory.DataSource = dt;
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "CategoryId";
            ddlCategory.DataBind();
            ddlCategory.Items.Insert(0, new ListItem("--Select Category--", "0"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int validate = 0;

            brand objbranddetails = new brand();
            try
            {
            objbranddetails.BrandName = BrandName.Text;
            objbranddetails.CategoryId = Convert.ToInt16(ddlCategory.SelectedItem.Value);
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
       //BAL

            BABrand objbrandBA = new BABrand();

            validate = objbrandBA.BA_ValidateBrand(objbranddetails);
            if (validate > 0)
            {
                Response.Write("<script> alert('Data already exist!')</script>");
            }
            else
            {

                int rValue = objbrandBA.BAAddbranddetails(objbranddetails);
                if (rValue > 0)
                {
                    Response.Write("<script>alert('success')</script>");

                    GetTabelDetails();
                }
                else
                {
                    Response.Write("<script>alert('Error')</script>");
                }
            }
        }

        public void GetTabelDetails()
        {
            BABrand obj_BABrand = new BABrand();
            DataTable dt = new DataTable();
            dt = obj_BABrand.BAGetBrandTable();

            gridview1.DataSource = dt;
            gridview1.DataBind();
        }



        protected void gridview1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int BrandId = Convert.ToInt16(gridview1.DataKeys[e.RowIndex].Value);

            brand obj_BEBrand = new brand();
            obj_BEBrand.BrandId = BrandId;

            BABrand obj_BABrand = new BABrand();
            int val = obj_BABrand.BADeleteBrand(obj_BEBrand);

            if (val > 0)
            {
                Response.Write("<script>alert('Brand deleted successfully')</script>");
                GetTabelDetails();
            }
            else
            {
                Response.Write("<script>alert('Error occured')</script>");
            }
        }
    }
}