using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using MySql;
using BE;


namespace DAL
{
    public class DALogin
    {
        //public static string connectionString = "Data Source=DESKTOP\\SQLEXPRESS;Initial Catalog=GSTBillingSystem;Integrated Security=True";
        QueryProcessor objQuery = new QueryProcessor();
        static MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
        public int DAaddLoginDetails(LoginEntities objLoginDetails)
        {
            int val = 0;
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.CheckLogin, con);

                cmd.Parameters.AddWithValue("@UserName", objLoginDetails.UserName);
                cmd.Parameters.AddWithValue("@Password", objLoginDetails.Password);
                val=cmd.ExecuteNonQuery();

                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
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

            }
            finally
            {
                con.Close();
            }
            return val;
        }
    }

}


              