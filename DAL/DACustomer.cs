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
    public class DACustomer
    {
        QueryProcessor objQuery = new QueryProcessor();
       
        MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
        //public static string connectionString = "Data Source=AARTI-PC;Initial Catalog=GSTMasterTable;Integrated Security=True";
               
        public int DAAddcustomerDetails(customentity objcustomerDetails)
        {
            int ReturnValue = 0;
            try
            {                
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.InsertCustomer, con);
                //cmd.Parameters.AddWithValue("@CustomerId", objcustomerDetails.CustomerId);
                cmd.Parameters.AddWithValue("@CustomerName", objcustomerDetails.CustomerName);
                cmd.Parameters.AddWithValue("@MobileNo", objcustomerDetails.MobileNo);
                cmd.Parameters.AddWithValue("@Address", objcustomerDetails.Address);
                cmd.Parameters.AddWithValue("@EmailId", objcustomerDetails.EmailId);
                cmd.Parameters.AddWithValue("@CustomerGSTNo", objcustomerDetails.CustomerGSTNo);
               // cmd.Parameters.AddWithValue("@HSN", objcustomerDetails.HSN);
                ReturnValue = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.ToString();
                //throw;
            }
            con.Close();
            return ReturnValue;
        }
        public DataTable DAGetTable()
        {
            QueryProcessor objQuery = new QueryProcessor();
         
            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetCustomer, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }
        public int DADeleteCustomer(customentity objCustomerdetails)
        {
            int ReturnValue = 0;
            try
            {

                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.DeleteCustomer, con);

                cmd.Parameters.AddWithValue("@CustomerId", objCustomerdetails.CustomerId);

                ReturnValue = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.ToString();
                //throw;
            }
        
            con.Close();

            return ReturnValue;
        }
        public int DA_ValidateCustomer(customentity objCustomerDetails)
        {
            int val = 0;
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.ValidateCustomer, con);
                cmd.Parameters.AddWithValue("@MobileNo", objCustomerDetails.MobileNo);
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
