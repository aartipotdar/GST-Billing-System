using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BE;
using BAL;

namespace GSTBillingSystem
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDown();
                GetTableDetails();
            }
        }

        public void BindDropDown()
        {
            BABrand objProduct = new BABrand();
            DataTable dt = new DataTable();
            dt = objProduct.BAGetCategory();
            BrandId.Items.Insert(0, new ListItem("--Select Brand--", "0"));

            CategoryId.DataSource = dt;
            CategoryId.DataTextField = "CategoryName";
            CategoryId.DataValueField = "CategoryId";

            CategoryId.DataBind();
            CategoryId.Items.Insert(0, new ListItem("--Select Category--", "0"));

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            ProductEntities objProductDetails = new ProductEntities();
            int validate = 0;
            try
            {

                objProductDetails.Product = Product.Text;
                objProductDetails.ProductShortCode = ProductShortCode.Text;
                objProductDetails.BrandId = Convert.ToInt16(BrandId.SelectedItem.Value);
                objProductDetails.CategoryId = Convert.ToInt16(CategoryId.SelectedItem.Value);
                objProductDetails.SaleRate = Convert.ToInt16(SaleRate.Text);
                objProductDetails.PurchaseRate = Convert.ToInt16(PurchaseRate.Text);
                objProductDetails.HSN = HSN.Text;
                objProductDetails.GST = Convert.ToInt16(GST.Text);
                objProductDetails.Discription = Description.Text;
                // objProductDetails.RowTotal = RowTotal.Text;
                objProductDetails.StockQuantity = Convert.ToInt16(StockQuantity.Text);
                objProductDetails.BarCode = Barcode.Text;
            }
            catch (Exception ex)
            {
                ex.ToString();
            }




            //BAL
            BAProduct objProductBA = new BAProduct();

            validate = objProductBA.BA_ValidateProduct(objProductDetails);
            if (validate > 0)
            {
                Response.Write("<script> alert('Data already exist!')</script>");
            }
            else
            {
                int rValue = objProductBA.BAaddProductDetails(objProductDetails);
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
            BAProduct objBAProduct = new BAProduct();
            DataTable dt = new DataTable();
            dt = objBAProduct.BAGetTable();

            gd.DataSource = dt;
            gd.DataBind();

        }

        protected void gd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ProductId = Convert.ToInt16(gd.DataKeys[e.RowIndex].Value);

            ProductEntities obj_BEProduct = new ProductEntities();
            obj_BEProduct.ProductId = ProductId;

            BAProduct obj_BAProduct = new BAProduct();
            int val = obj_BAProduct.BADeleteProduct(obj_BEProduct);

            if (val > 0)
            {
                Response.Write("<script>alert('Product deleted successfully')</script>");
                GetTableDetails();
            }
            else
            {
                Response.Write("<script>alert('Error occured')</script>");
            }
        }

        protected void CategoryId_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductEntities obj_BEProduct = new ProductEntities();
            obj_BEProduct.CategoryId = Convert.ToInt16(CategoryId.SelectedItem.Value);

            DataTable dt1 = new DataTable();
            BAProduct obj_BAProduct = new BAProduct();
            dt1 = obj_BAProduct.BA_GetBrandFromCategory(obj_BEProduct);

            BrandId.DataSource = dt1;
            BrandId.DataTextField = "BrandName";
            BrandId.DataValueField = "BrandId";

            BrandId.DataBind();
            BrandId.Items.Insert(0, new ListItem("--Select Brand--", "0"));



        }
    }
}



