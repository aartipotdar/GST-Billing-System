using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using BE;



namespace DAL
{
    public class DAVendor
    {
        //public static string connectionString = "Data Source=DESKTOP\\SQLEXPRESS;Initial Catalog=GSTBillingSystem;Integrated Security=True";
        QueryProcessor objQuery = new QueryProcessor();

        MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);

        public int DAaddVendorDetails(VendorEntities objVendorDetails)
        {
            int ReturnValue = 0;
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.InsertVendor, con);

                //cmd.Parameters.AddWithValue("@VendorId", objVendorDetails.VendorId);
                cmd.Parameters.AddWithValue("@CompanyName", objVendorDetails.CompanyName);
                cmd.Parameters.AddWithValue("@VendorName", objVendorDetails.VendorName);
                cmd.Parameters.AddWithValue("@MobileNo", objVendorDetails.MobileNo);
                cmd.Parameters.AddWithValue("@Address", objVendorDetails.Address);
                cmd.Parameters.AddWithValue("@EmailId", objVendorDetails.EmailId);
                cmd.Parameters.AddWithValue("@VendorGSTNo", objVendorDetails.VendorGSTNo);
                cmd.Parameters.AddWithValue("@BankAccountNo", objVendorDetails.BankAccountNo);
                cmd.Parameters.AddWithValue("@BankName", objVendorDetails.BankName);
                cmd.Parameters.AddWithValue("@Branch", objVendorDetails.Branch);
                cmd.Parameters.AddWithValue("@IFSCCode", objVendorDetails.IFSCCode);
                cmd.Parameters.AddWithValue("@PanCard", objVendorDetails.PanCard);
                cmd.Parameters.AddWithValue("@AadharCard", objVendorDetails.AadharCard);
                

                ReturnValue = cmd.ExecuteNonQuery();

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
            return ReturnValue;

        }
        public DataTable DAGetTable()
        {
            QueryProcessor objQuery = new QueryProcessor();
          
            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetVendor, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }
         public int DA_DeleteVendor(VendorEntities objVendordetails)
        {
            int val = 0;
            
            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.DeleteVendor, con);
            cmd.Parameters.AddWithValue("@VendorId", objVendordetails.VendorId);
            val = cmd.ExecuteNonQuery();

            con.Close();
            return val;
        }
         public int DA_EditVendor(VendorEntities objVendordetails)
         {
             int val = 0;

             con.Open();
             MySqlCommand cmd = new MySqlCommand(objQuery.UpdateVendor, con);
             cmd.Parameters.AddWithValue("@VendorId", objVendordetails.VendorId);
             val = cmd.ExecuteNonQuery();

             con.Close();
             return val;
         }
         public int DA_ValidateVendor(VendorEntities objVendorDetails)
         {
             int val = 0;
             DataTable dt = new DataTable();
             try
             {
                 con.Open();
                 MySqlCommand cmd = new MySqlCommand(objQuery.ValidateVendor, con);
                 cmd.Parameters.AddWithValue("@AadharCard", objVendorDetails.AadharCard);
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
    }
}