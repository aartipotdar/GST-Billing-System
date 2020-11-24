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
    public class DAProduct
    {


        static MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
        QueryProcessor objQuery = new QueryProcessor();

        public int DAaddProductDetails(ProductEntities objProductDetails)
        {
            int ReturnValue = 0;
            try
            {
              
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.InsertProduct, con);
               // cmd.Parameters.AddWithValue("@ProductId", objProductDetails.ProductId);
                cmd.Parameters.AddWithValue("@Product", objProductDetails.Product);
                cmd.Parameters.AddWithValue("@ProductShortCode", objProductDetails.ProductShortCode);
                cmd.Parameters.AddWithValue("@BrandId", objProductDetails.BrandId);
                cmd.Parameters.AddWithValue("@CategoryId", objProductDetails.CategoryId);
                cmd.Parameters.AddWithValue("@SaleRate", objProductDetails.SaleRate);
                cmd.Parameters.AddWithValue("@PurchaseRate", objProductDetails.PurchaseRate);
                cmd.Parameters.AddWithValue("@HSN", objProductDetails.HSN);
                cmd.Parameters.AddWithValue("@GST", objProductDetails.GST);
                cmd.Parameters.AddWithValue("@Discription", objProductDetails.Discription);
                //cmd.Parameters.AddWithValue("@RowTotal", objProductDetails.RowTotal);
                cmd.Parameters.AddWithValue("@isInventory", objProductDetails.StockQuantity);
            
                cmd.Parameters.AddWithValue("@StockQuantity", objProductDetails.StockQuantity);
                cmd.Parameters.AddWithValue("@BarCode", objProductDetails.BarCode);

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

        public DataTable DAGetTable()
        {

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.ShowProductTable, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

        public DataTable DAGetBrand()
        {
            QueryProcessor objQuery = new QueryProcessor();

            //con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetBrandForDropdown, con);


            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //con.Close();
            return dt;
        }

        public int DADeleteProduct(ProductEntities objProductdetails)
        {
            int ReturnValue = 0;


            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.DeleteProduct, con);

            cmd.Parameters.AddWithValue("@ProductId", objProductdetails.ProductId);

            ReturnValue = cmd.ExecuteNonQuery();
            con.Close();
            return ReturnValue;
        }

        public int DA_ValidateProduct(ProductEntities objProductDetails)
        {
            int val = 0;
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.ValidateProduct, con);
                cmd.Parameters.AddWithValue("@Product", objProductDetails.Product);
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

        public DataTable DA_GetBrandFromCategory(ProductEntities BEProduct)
        {

            DataTable dt = new DataTable();

            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.GetBrandForDropdown, con);
                cmd.Parameters.AddWithValue("@CategoryId", BEProduct.CategoryId);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);

            }
            catch (Exception ex)
            {
                ex.ToString();
            }
            finally
            {
                con.Close();
            }

            return dt;
        }
    }
}