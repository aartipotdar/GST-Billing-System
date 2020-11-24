using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BE;
using BAL;
using System.Data;
using System.Web.Services;


namespace GSTBillingSystem
{
    public partial class tblSaleMaster : System.Web.UI.Page
    {
        public static double totalamount;
        public static int SaleId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Date.Text = DateTime.Now.ToString("yyyy-MM-dd");
                BindDropdown();
                BindInvoiceNo();
            }
        }
        #region Bind Invoice No and Booking no
        public void BindInvoiceNo()
        {
            BASaleMaster objSale = new BASaleMaster();
            int rVal = objSale.BAGetMaxSaleBillNo();
            //txtInvoiceNo.Text = rVal.ToString();
            //lblInvoiceNo.Text = "0000"+ rVal.ToString();
            BillNo.Text = rVal.ToString("D3");
            //txtBookingNO.Text = "MT" + DateTime.Now.Year.ToString() + rVal.ToString();
        }
        #endregion
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
            SaleEntities objSaleDetails = new SaleEntities();

            //objSaleDetails.SaleId = Convert.ToInt16(SaleId.Text);
            objSaleDetails.BillNo = Convert.ToInt16(BillNo.Text);
            objSaleDetails.Date = Date.Text;
            objSaleDetails.CustomerName = CustomerName.Text;
            objSaleDetails.MobileNo = MobileNo.Text;
            objSaleDetails.EmailId = EmailId.Text;
            objSaleDetails.GSTNo = Convert.ToInt32(GSTNo.Text);
            objSaleDetails.Address = Address.InnerText;
            //objSaleDetails.Product = (Product.SelectedItem.Value);
            objSaleDetails.Price = Convert.ToInt32(Price.Text);
            objSaleDetails.Quantity = Convert.ToInt32(Quantity.Text);
            objSaleDetails.GSTType = ddlGSTType.Text;
            objSaleDetails.GSTPercentage = Convert.ToInt16(GSTPercentage.Text);
            objSaleDetails.Total = Convert.ToInt32(Total.Text);
            objSaleDetails.PlaceToSupply = PlaceToSupply.Text;
            objSaleDetails.Transport = Convert.ToInt16(Transport.Text);
            objSaleDetails.OtherCharges = Convert.ToInt16(OtherCharges.Text);
            //objSaleDetails.RoundOff = Convert.ToInt16(RoundOff.Text);
            objSaleDetails.TotalAmount = Convert.ToInt16(TotalAmount.Text);
            objSaleDetails.Discount = Convert.ToInt32(Discount.Text);
            objSaleDetails.RupeesInWord = RupeesInword.Text;
            objSaleDetails.Paymentmtd = Paymentmtd.Text;

            try
            {
                //BAL
                BASaleMaster objSaleMasterBA = new BASaleMaster();

                validate = objSaleMasterBA.BA_ValidateSale(objSaleDetails);
                if (validate > 0)
                {
                    SaleId = validate;
                }
                else
                {

                    int rValue = objSaleMasterBA.BAaddSaleDetails(objSaleDetails);
                    SaleId = rValue;
                    if (rValue > 0)
                    {
                        GetTableDetails();
                    }
                    else
                    {
                        Response.Write("<script>alert('Error')</script>");
                    }
                }

                AddSaleOutwards(SaleId);
            }
            catch (Exception ex)
            {
                ex.ToString();
                //throw;
            }
        }

        public void GetTableDetails()
        {
            BASaleMaster objBASaleMaster = new BASaleMaster();
            DataTable dt = new DataTable();
            dt = objBASaleMaster.BAGetTable();
        }

        protected void CustomerName_TextChanged(object sender, EventArgs e)
        {

            //string customername;
            DataTable dt = new DataTable();
            SaleEntities objSaleDetails = new SaleEntities();
            objSaleDetails.CustomerName = CustomerName.Text;

            BASaleMaster objSaleMasterBA = new BASaleMaster();
            dt = objSaleMasterBA.BA_GetCustomersDetails(objSaleDetails);

            foreach (DataRow dr in dt.Rows)
            {
                MobileNo.Text = dr["MobileNo"].ToString();
                EmailId.Text = dr["EmailId"].ToString();
                GSTNo.Text = dr["CustomerGSTNo"].ToString();
                Address.InnerText = dr["Address"].ToString();
            }

            //    try
            //    {
            //        DataTable Result = new DataTable();
            //        DataTable dt = new DataTable();

            //        //CustomerName.Text = dt.Rows[0][1] + "<br/>";
            //        //MobileNo.Text = dt.Rows[0][2] + "<br/>";
            //        //EmailId.Text = dt.Rows[0][3] + "<br/>";
            //        //GSTNo.Text = dt.Rows[0][4] + "<br/>";
            //        //Address.InnerText = dt.Rows[0][5] + "<br/>";
            //        //foreach (DataRow dr in dt.Rows)
            //        //{
            //        //    foreach (DataColumn dc in dt.Columns)
            //        //    {
            //        //        CustomerName.Text = dt.Rows[0][1] + "<br/>";
            //        //        MobileNo.Text = dt.Rows[0][2] + "<br/>";
            //        //        EmailId.Text = dt.Rows[0][3] + "<br/>";
            //        //        GSTNo.Text = dt.Rows[0][4] + "<br/>";
            //        //        Address.InnerText = dt.Rows[0][5] + "<br/>";

            //        //    }
            //        //}
            //    }
            //    catch (Exception ex)
            //    {
            //        ex.ToString();
            //    }


            //}

            //[WebMethod]
            //public static List<string> SearchUser(string prefixText)
            //{
            //    DataTable dt = new DataTable();

            //    BASaleMaster obj_BASale = new BASaleMaster();
            //    dt = obj_BASale.BA_SearchName(prefixText);

            //    List<string> Output = new List<string>();
            //    for (int i = 0; i < dt.Rows.Count; i++)
            //    {
            //        Output.Add(dt.Rows[i][0].ToString());
            //    }

            //    return Output;
        }

        protected void Product_SelectedIndexChanged(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            SaleEntities objSaleDetails = new SaleEntities();
            objSaleDetails.Product = Product.SelectedItem.Value;

            BASaleMaster objSaleMasterBA = new BASaleMaster();

            dt = objSaleMasterBA.BA_GetProductDetails(objSaleDetails);

            foreach (DataRow dr in dt.Rows)
            {
                Price.Text = dr["SaleRate"].ToString();
                GSTPercentage.Text = dr["GST"].ToString();

            }
        }

        protected void Quantity_TextChanged(object sender, EventArgs e)
        {
            int pricequtitytotal = 0, price = 0, quantity = 0, gst = 0;
            double totalgst = 0;
            price = Convert.ToInt16(Price.Text);
            gst = Convert.ToInt16(GSTPercentage.Text);
            quantity = Convert.ToInt16(Quantity.Text);

            pricequtitytotal = price * quantity;

            totalgst = pricequtitytotal * gst / 100;
            totalamount = pricequtitytotal + totalgst;

            Total.Text = totalamount.ToString();

        }

        protected void Discount_TextChanged(object sender, EventArgs e)
        {
            int Transportamount = 0, OtherChargesamount = 0, Amount = 0;
            double Discountamount = 0, TotalAmnt;
            string s;
            s = Transport.Text;
            Transportamount = Convert.ToInt32(Transport.Text);
            OtherChargesamount = Convert.ToInt32(OtherCharges.Text);
            Discountamount = Convert.ToInt16(Discount.Text);

            Amount = Convert.ToInt16(Transportamount + OtherChargesamount + totalamount);
            TotalAmnt = Amount - Discountamount;
            TotalAmount.Text = TotalAmnt.ToString();
        }


        public void AddSaleOutwards(int saleId)
        {
            int rVal = 0;
            try
            {
                SaleOutwardsEntities objSaleOutwards = new SaleOutwardsEntities();
                objSaleOutwards.saleId = saleId;
                objSaleOutwards.productId = Convert.ToInt32(Product.SelectedItem.Value);
                objSaleOutwards.isActive = 1;
                objSaleOutwards.qnty = Convert.ToInt32(Quantity.Text);

                rVal = new BASaleMaster().BA_SaveSaleOutwards(objSaleOutwards);
                if (rVal > 0)
                {
                    bindProducts(saleId);
                    Response.Write("<script>alert('Added successfully...')</script>");
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
                //throw;
            }
        }

        public void bindProducts(int SaleId)
        {
            try
            {
                DataTable dt = new DataTable();
                dt = new BASaleMaster().BA_GetProductsBySaleId(SaleId);
                grdvProductsBySale.DataSource = dt;
                grdvProductsBySale.DataBind();
            }
            catch (Exception ex)
            {
                ex.ToString();
                //throw;
            }

        }

    }
}





