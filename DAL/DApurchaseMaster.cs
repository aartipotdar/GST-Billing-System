using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.Data;
using MySql.Data.MySqlClient;
using MySql;


namespace DAL
{
     public class DApurchaseMaster
    {
        static MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
        QueryProcessor objQuery = new QueryProcessor();

        public int DAaddPurchaseDetails(PurchaseEntities objPurchaseDetails)
        {
            int ReturnValue = 0;
            try
            {
                //con.Close();
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.InsertPurchase, con);

                cmd.Parameters.AddWithValue("@PurchaseBillNo", objPurchaseDetails.PurchaseBillNo);
                cmd.Parameters.AddWithValue("@PurchaseDate", objPurchaseDetails.PurchaseDate);
                cmd.Parameters.AddWithValue("@VendorName", objPurchaseDetails.VendorName);
                cmd.Parameters.AddWithValue("@MobileNo", objPurchaseDetails.MobileNo);
                cmd.Parameters.AddWithValue("@EmailId", objPurchaseDetails.EmailId);
                cmd.Parameters.AddWithValue("@GSTNo", objPurchaseDetails.GSTNo);
                cmd.Parameters.AddWithValue("@CompanyName", objPurchaseDetails.CompanyName);
                cmd.Parameters.AddWithValue("@Product", objPurchaseDetails.Product);
                cmd.Parameters.AddWithValue("@Price", objPurchaseDetails.Price);
                cmd.Parameters.AddWithValue("@Quantity", objPurchaseDetails.Quantity);
                cmd.Parameters.AddWithValue("@GSTType", objPurchaseDetails.GSTType);
                cmd.Parameters.AddWithValue("@GSTPercentage", objPurchaseDetails.GSTPercentage);
                cmd.Parameters.AddWithValue("@Total", objPurchaseDetails.Total);
                cmd.Parameters.AddWithValue("@Transport", objPurchaseDetails.Transport);
                cmd.Parameters.AddWithValue("@TotalAmount", objPurchaseDetails.TotalAmount);
                cmd.Parameters.AddWithValue("@Discount", objPurchaseDetails.Discount);
                cmd.Parameters.AddWithValue("@RupeesInWord", objPurchaseDetails.RupeesInWord);
                cmd.Parameters.AddWithValue("@PaymentMethod", objPurchaseDetails.PaymentMethod);



                ReturnValue = cmd.ExecuteNonQuery();

              
            }

            catch (Exception ex)
            {
                ex.ToString();
                //throw
            }
            finally
            {
                con.Close();
            }
            return ReturnValue;



        }
        public int DA_ValidatePurchase(PurchaseEntities objPurchaseDetails)
        {
            int val = 0;
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.ValidatePurchase, con);
                cmd.Parameters.AddWithValue("@MobileNo", objPurchaseDetails.MobileNo);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    val = 1;
                }
                else
                {
                    val = 0;
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
                //throw;
            }
            finally
            {
                con.Close();
            }
            return val;
        }


        public DataTable DAGetTable()
        {
            QueryProcessor objQuery = new QueryProcessor();

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetPurchase, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;

        }

          public DataTable SearchUser(string prefixText)
        {
            MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
            DataTable dt = new DataTable();
            MySqlCommand cmd = new MySqlCommand("select VendorName from tblVendor where VendorName like '" + prefixText + "%'", con);

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);

            da.Fill(dt);


            con.Close();
            return dt;
        }

        public DataTable DA_VendorDetails(PurchaseEntities objPurchaseDetails)
        {
            QueryProcessor objQuery = new QueryProcessor();

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetVendorByName, con);
            cmd.Parameters.AddWithValue("@VendorName", objPurchaseDetails.VendorName);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }


        public DataTable SearchUserp(string prefixText)
        {
            MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
            DataTable dt = new DataTable();
            MySqlCommand cmd = new MySqlCommand("select ProductName from tbl_Product where ProductName like '" + prefixText + "%'", con);

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);

            da.Fill(dt);


            con.Close();
            return dt;
        }

        public DataTable DA_ProductDetails(PurchaseEntities objPurchaseDetails)
        {
            QueryProcessor objQuery = new QueryProcessor();

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetProductByName, con);
            cmd.Parameters.AddWithValue("@Product", objPurchaseDetails.Product);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }


    }

    
  }      




     