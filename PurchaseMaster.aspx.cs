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
    public partial class PurchaseMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropdown();
            }

        }
        public void BindDropdown()
        {
            BAProduct obj_BAproduct = new BAProduct();

            DataTable dt = new DataTable();
            dt = obj_BAproduct.BAGetTable();

            Product.DataSource = dt;
            Product.DataTextField = "Product";
            Product.DataValueField = "ProductId";
            Product.DataBind();
            Product.Items.Insert(0, new ListItem("--Select Product--", "0"));

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int validate = 0;

            PurchaseEntities objPurchaseDetails = new PurchaseEntities();
            try
            {

                objPurchaseDetails.PurchaseBillNo = Convert.ToInt32(PurchaseBillNo.Text);
                objPurchaseDetails.PurchaseDate = PurchaseDate.Text;
                objPurchaseDetails.VendorName = VendorName.Text;
                objPurchaseDetails.MobileNo = MobileNo.Text;
                objPurchaseDetails.EmailId = EmailId.Text;
                objPurchaseDetails.GSTNo = Convert.ToInt32(GSTNo.Text);
                objPurchaseDetails.CompanyName = Convert.ToString(CompanyName.Text);
                objPurchaseDetails.Product = (Product.SelectedItem.Value);
                objPurchaseDetails.Price = Convert.ToInt32(Price.Text);
                objPurchaseDetails.Quantity = Convert.ToInt32(Quantity.Text);
                objPurchaseDetails.GSTType = Convert.ToString(ddlGSTType.Text);
                objPurchaseDetails.GSTPercentage = Convert.ToInt16(GSTPercentage.Text);
                objPurchaseDetails.Total = Convert.ToInt16(Total.Text);
                objPurchaseDetails.Transport = Transport.Text;
                objPurchaseDetails.TotalAmount = Convert.ToInt32(TotalAmount.Text);
                objPurchaseDetails.Discount = Convert.ToInt32(Discount.Text);
                objPurchaseDetails.RupeesInWord = Convert.ToString(RupeesInWord.Text);
                objPurchaseDetails.PaymentMethod = Convert.ToString(PaymentMethod.Text);

            }
            catch (Exception ex)
            {
                ex.ToString();
            }



            //BAL
            BAPurchaseMaster objPurchaseMasterBA = new BAPurchaseMaster();

            validate = objPurchaseMasterBA.BA_ValidatePurchase(objPurchaseDetails);
            if (validate > 0)
            {
                Response.Write("<script> alert('Data already exist!')</script>");
            }
            else
            {


                int rValue = objPurchaseMasterBA.BAaddPurchaseDetails(objPurchaseDetails);
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
            BAPurchaseMaster objPurchaseMaster = new BAPurchaseMaster();
            DataTable dt = new DataTable();
            dt = objPurchaseMaster.BAGetTable();



        }

       
        protected void VendorName_Texthanged1(object sender, EventArgs e)
        {
            //string vendorname;
            DataTable dt = new DataTable();
            PurchaseEntities objPurchaseDetails = new PurchaseEntities();
            objPurchaseDetails.VendorName = VendorName.Text;

            BAPurchaseMaster objPurchaseMasterBA = new BAPurchaseMaster();
          
            dt = objPurchaseMasterBA.BA_GetVendorDetails(objPurchaseDetails);

            foreach (DataRow dr in dt.Rows)
            {
                MobileNo.Text = dr["MobileNo"].ToString();
                EmailId.Text = dr["EmailId"].ToString();
                GSTNo.Text = dr["VendorGSTNo"].ToString();
                CompanyName.Text = dr["CompanyName"].ToString();
            }
        }

       protected void VendorName_TextChanged1(object sender, EventArgs e)
        {
            //string vendorname;
            DataTable dt = new DataTable();
            PurchaseEntities objPurchaseDetails = new PurchaseEntities();
            objPurchaseDetails.VendorName = VendorName.Text;

            BAPurchaseMaster objPurchaseMasterBA = new BAPurchaseMaster();
          
            dt = objPurchaseMasterBA.BA_GetVendorDetails(objPurchaseDetails);

            foreach (DataRow dr in dt.Rows)
            {
                MobileNo.Text = dr["MobileNo"].ToString();
                EmailId.Text = dr["EmailId"].ToString();
                GSTNo.Text = dr["VendorGSTNo"].ToString();
                CompanyName.Text = dr["CompanyName"].ToString();
            }
        }

        protected void Product_SelectedIndexChanged(object sender, EventArgs e)
        {
         string product;
            DataTable dt = new DataTable();
            PurchaseEntities objPurchaseDetails = new PurchaseEntities();
            objPurchaseDetails.Product = Product.SelectedItem.Value;

            BAPurchaseMaster objPurchaseMasterBA = new BAPurchaseMaster();
          
            dt = objPurchaseMasterBA.BA_GetProductDetails(objPurchaseDetails);

            foreach (DataRow dr in dt.Rows)
            {
                Price.Text = dr["SaleRate"].ToString();
               GSTPercentage.Text=dr["GST"].ToString();
                
            }


        }

        protected void Quantity_TextChanged(object sender, EventArgs e)
        {
            int pricequtitytotal = 0, price = 0, quantity = 0, gst = 0, totalamount;
            double totalgst = 0;
            price = Convert.ToInt16(Price.Text);
            gst = Convert.ToInt16(GSTPercentage.Text);
            quantity = Convert.ToInt16(Quantity.Text);

            pricequtitytotal = price * quantity;

            totalgst = pricequtitytotal * gst / 100;
            totalamount = Convert.ToInt32(pricequtitytotal + totalgst);

            Total.Text = totalamount.ToString();   
           
        }

        protected void Discount_TextChanged(object sender, EventArgs e)
        {
            int Transportamount = 0, Amount = 0, totalamount = 0; ;
            double Discountamount = 0, TotalAmnt;
            string s;
            s = Transport.Text;
            Transportamount = Convert.ToInt32(Transport.Text);
           
            Discountamount = Convert.ToInt16(Discount.Text);

            Amount = Convert.ToInt16(Transportamount + totalamount);
            TotalAmnt = Amount - Discountamount;
            TotalAmount.Text = TotalAmnt.ToString();

        }

        }

        }

       
  
