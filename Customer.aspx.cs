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
    public partial class Customer1 : System.Web.UI.Page
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
            customentity objcustomerDetails = new customentity();
            try
            {
            objcustomerDetails.CustomerName = CustomerName.Text;
            objcustomerDetails.MobileNo = MobileNo.Text;
            objcustomerDetails.Address = Address.Text;
            objcustomerDetails.EmailId = EmailId.Text;
            objcustomerDetails.CustomerGSTNo = Convert.ToInt32(CustomerGSTNo.Text);
           // objcustomerDetails.HSN = Convert.ToInt32(HSN.Text);
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
       

            //BAL
            BACustomers objCustomerBA = new BACustomers();

            validate = objCustomerBA.BA_ValidateCustomer(objcustomerDetails);
            if (validate > 0)
            {
                Response.Write("<script> alert('Data already exist!')</script>");
            }
            else
            {

                int rValue = objCustomerBA.BAAddCustomerDetails(objcustomerDetails);
                if (rValue > 0)
                {
                    Response.Write("<script>alert('Success')</script>");
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
            BACustomers objBACustomers = new BACustomers();
            DataTable dt = new DataTable();
            dt = objBACustomers.BAGetTable();
            gridview2.DataSource = dt;
            gridview2.DataBind();

        }

        protected void gridview2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CustomerId = Convert.ToInt16(gridview2.DataKeys[e.RowIndex].Value);

            customentity obj_BECustomer = new customentity();
            obj_BECustomer.CustomerId = CustomerId;

            BACustomers obj_BACustomer = new BACustomers();
            int val = obj_BACustomer.BADeleteCustomer(obj_BECustomer);

            if (val > 0)
            {
                Response.Write("<script>alert('Record deleted successfully')</script>");
                GetTableDetails();
            }
            else
            {
                Response.Write("<script>alert('Error occured')</script>");
            }

        }

       
    }
}