using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.Data;
using MySql;


namespace DAL
{
    public class DABrand
    {
        QueryProcessor objQuery = new QueryProcessor();
        //SqlConnection con = new SqlConnection(DAL.Properties.Settings.Default.conStr);
        MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);

        public int DAAddbranddetails(brand objbranddetails)
        {
            int ReturnValue = 0;


            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.InsertBrand, con);
            cmd.Parameters.AddWithValue("@BrandName", objbranddetails.BrandName);
            //cmd.Parameters.AddWithValue("@BrandShortname", objbranddetails.BrandShortname);
            cmd.Parameters.AddWithValue("@CategoryId", objbranddetails.CategoryId);
        

            ReturnValue = cmd.ExecuteNonQuery();
            con.Close();
            return ReturnValue;
        }

        public DataTable DAGetCategory()
        {

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetCategory, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;

        }

        public DataTable DAGetBrandTable()
        {

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetBrand, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;

        }

        public int DADeleteBrand(brand objbranddetails)
        {
            int ReturnValue = 0;


            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.DeleteBrand, con);

            cmd.Parameters.AddWithValue("@BrandId", objbranddetails.BrandId);

            ReturnValue = cmd.ExecuteNonQuery();
            con.Close();
            return ReturnValue;
        }
        public int DA_ValidateBrand(brand objBrandDetails)
        {
            int val = 0;
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.ValidateBrand, con);
                cmd.Parameters.AddWithValue("@BrandName", objBrandDetails.BrandName);
                //cmd.Parameters.AddWithValue("@CategoryName",objBrandDetails.ca)
                cmd.Parameters.AddWithValue("@CategoryId", objBrandDetails.CategoryId);
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

    


