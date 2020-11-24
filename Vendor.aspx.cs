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
    public partial class Vendor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
         
            if (!IsPostBack)
            {
                
                GetTableDetails();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int validate = 0;

            VendorEntities objVendorDetails = new VendorEntities();
            try
            {
                //objVendorDetails.VendorId = Convert.ToInt32(VendorId.Text);
                objVendorDetails.CompanyName = CompanyName.Text;
                objVendorDetails.VendorName = VendorName.Text;
                objVendorDetails.MobileNo = MobileNo.Text;
                objVendorDetails.Address = Address.Text;
                objVendorDetails.EmailId = EmailId.Text;
                objVendorDetails.VendorGSTNo = VendorGSTNo.Text;
                objVendorDetails.BankAccountNo = BankAccountNo.Text;
                objVendorDetails.BankName = BankName.Text;
                objVendorDetails.Branch = Branch.Text;
                objVendorDetails.IFSCCode = IFSCCode.Text;
                objVendorDetails.PanCard = PanCard.Text;
                objVendorDetails.AadharCard = AadharCard.Text;
            }
            catch (Exception ex)
            {
                ex.ToString();
            }


            //BAL
            BAVendor2 objVendorBA = new BAVendor2();

            validate = objVendorBA.BA_ValidateVendor(objVendorDetails);
            if (validate > 0)
            {
                Response.Write("<script> alert('Data already exist!')</script>");
            }
            else
            {

                int rValue = objVendorBA.BAaddVendorDetails(objVendorDetails);
                if (rValue > 0)
                {
                    Response.Write("<script>alert('success')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error')</script>");

                }
            }
        }

             public void GetTableDetails()
        {
            BAVendor2 objBAVendor = new BAVendor2();
            DataTable dt = new DataTable();
            dt = objBAVendor.BAGetTable();

            gd.DataSource = dt;
            gd.DataBind();

        }

             protected void gd_RowDeleting(object sender, GridViewDeleteEventArgs e)
             {
                 int VendorId = Convert.ToInt16(gd.DataKeys[e.RowIndex].Value);

                 VendorEntities obj_BEVendor = new VendorEntities();
                 obj_BEVendor.VendorId = VendorId;


                 BAVendor2 obj_BAVendor = new BAVendor2();
                 int val = obj_BAVendor.BA_EditVendor(obj_BEVendor);

                 if (val > 0)
                 {
                     Response.Write("<script>alert('Vendor deleted successfully')</script>");
                     GetTableDetails();
                 }
                 else
                 {
                     Response.Write("<script>alert('Error Occured')</script>");
                 }
             }

             protected void gd_RowEditing(object sender, GridViewEditEventArgs e)
             {

                 gd.EditIndex=e.NewEditIndex;
                 this.GetTableDetails();
                 // int VendorId = Convert.ToInt16(gd.DataKeys[e.NewEditIndex].Value);

                 //VendorEntities obj_BEVendor = new VendorEntities();
                 //obj_BEVendor.VendorId = VendorId;


                 //BAVendor2 obj_BAVendor = new BAVendor2();
                 //int val = obj_BAVendor.BA_EditVendor(obj_BEVendor);

                 //if (val > 0)
                 //{
                 //    Response.Write("<script>alert('Vendor Updatet successfully')</script>");
                 //    GetTableDetails();
                 //}
                 //else
                 //{
                 //    Response.Write("<script>alert('Error Occured')</script>");
                 //}
             }

             }
      }


    
