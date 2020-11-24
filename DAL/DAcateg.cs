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
    public class DAcateg
    {
        QueryProcessor objQuery = new QueryProcessor();
        MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);

        
        public int DAAddcategorydetails(Categories objcategorydetails)
        {
            int ReturnValue = 0;
            try
         {
          
            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.InsertCategory, con);
            cmd.Parameters.AddWithValue("@CategoryName", objcategorydetails.CategoryName);
           // cmd.Parameters.AddWithValue("@CategoryShortname", objcategorydetails.CategoryShortname);
            //cmd.Parameters.AddWithValue("@IsActive", objcategorydetails.IsActive);
            ReturnValue = cmd.ExecuteNonQuery();
            con.Close();
            return ReturnValue;
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
            MySqlCommand cmd = new MySqlCommand(objQuery.GetCategory, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

        public int DA_DeleteCategory(Categories objcategorydetails)
        {
            int val = 0;
            
            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.DeleteCategory, con);
            cmd.Parameters.AddWithValue("@CategoryId", objcategorydetails.CategoryId);
            val = cmd.ExecuteNonQuery();

            con.Close();
            return val;
        }

        public int DA_ValidateCategory(Categories objCategoriesDetails)
        {
            int val = 0;
            DataTable dt=new DataTable();
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.ValidateCategory,con);
                cmd.Parameters.AddWithValue("@CategoryName", objCategoriesDetails.CategoryName);
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
