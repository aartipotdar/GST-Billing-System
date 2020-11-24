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
    public class DASaleMaster
    {
        MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
        QueryProcessor objQuery = new QueryProcessor();

        public int DAGetMaxSaleBillNo()
        {
            int rVal = 0;
            string query = "SELECT ifnull(max(cast(BillNo as signed)),0) +1  as BillNo FROM tblsale t ";
            query += " order by saleId desc;";
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);
                MySqlDataReader dr = cmd.ExecuteReader();
                if (dr != null)
                {
                    if (dr.HasRows)
                    {
                        dr.Read();
                        rVal = Convert.ToInt32(dr["BillNo"].ToString());
                    }
                }
            }
            catch (Exception ex) { }
            finally { con.Close(); }
            return rVal;
        }

        public int DAaddSaleDetails(SaleEntities objSaleDetails)
        {
            int ReturnValue = 0;
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.InsertSale, con);
                // cmd.Parameters.AddWithValue("@SaleId", objSaleDetails.SaleId);
                cmd.Parameters.AddWithValue("@BillNo", objSaleDetails.BillNo);
                cmd.Parameters.AddWithValue("@Date", objSaleDetails.Date);
                cmd.Parameters.AddWithValue("@CustomerName", objSaleDetails.CustomerName);
                cmd.Parameters.AddWithValue("@MobileNo", objSaleDetails.MobileNo);
                cmd.Parameters.AddWithValue("@EmailId", objSaleDetails.EmailId);
                cmd.Parameters.AddWithValue("@GSTNo", objSaleDetails.GSTNo);
                cmd.Parameters.AddWithValue("@Address", objSaleDetails.Address);
                cmd.Parameters.AddWithValue("@Price", objSaleDetails.Price);
                cmd.Parameters.AddWithValue("@Quantity", objSaleDetails.Quantity);
                cmd.Parameters.AddWithValue("@GSTType", objSaleDetails.GSTType);
                cmd.Parameters.AddWithValue("@GSTPercentage", objSaleDetails.GSTPercentage);
                cmd.Parameters.AddWithValue("@Total", objSaleDetails.Total);
                cmd.Parameters.AddWithValue("@PlaceToSupply", objSaleDetails.PlaceToSupply);
                cmd.Parameters.AddWithValue("@Transport", objSaleDetails.Transport);
                cmd.Parameters.AddWithValue("@OtherCharges", objSaleDetails.MobileNo);
                cmd.Parameters.AddWithValue("@RoundOff", objSaleDetails.RoundOff);
                cmd.Parameters.AddWithValue("@TotalAmount", objSaleDetails.TotalAmount);
                cmd.Parameters.AddWithValue("@Discount", objSaleDetails.Discount);
                cmd.Parameters.AddWithValue("@RupeesInWord", objSaleDetails.RupeesInWord);
                cmd.Parameters.AddWithValue("@Paymentmtd", objSaleDetails.Paymentmtd);

                //ReturnValue = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.ExecuteNonQuery();
                ReturnValue = Convert.ToInt32(Convert.ToDouble(cmd.LastInsertedId));
            }
            catch (Exception ex)
            {
                ex.ToString();
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
            MySqlCommand cmd = new MySqlCommand(objQuery.GetSale, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;

        }

        public int DA_ValidateSale(SaleEntities objSaleDetails)
        {
            int val = 0;
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.ValidateSale, con);
                cmd.Parameters.AddWithValue("@MobileNo", objSaleDetails.MobileNo);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    val = Convert.ToInt32(dt.Rows[0]["saleId"]);
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

        public DataTable SearchUser(string prefixText)
        {
            MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
            DataTable dt = new DataTable();
            MySqlCommand cmd = new MySqlCommand("select CustomerName from tblCustomer where CustomerName like '" + prefixText + "%'", con);

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);

            da.Fill(dt);


            con.Close();
            return dt;
        }

        public DataTable DA_CustomerDetails(SaleEntities objSaleDetails)
        {
            QueryProcessor objQuery = new QueryProcessor();

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetVendorByName, con);
            cmd.Parameters.AddWithValue("@VendorName", objSaleDetails.CustomerName);
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

        public DataTable DA_ProductDetails(SaleEntities objSaleDetails)
        {
            QueryProcessor objQuery = new QueryProcessor();

            con.Open();
            MySqlCommand cmd = new MySqlCommand(objQuery.GetProductByName, con);
            cmd.Parameters.AddWithValue("@Product", objSaleDetails.Product);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

        public int DA_AddSaleOutwards(SaleOutwardsEntities objSaleOutwards)
        {
            int ReturnValue = 0;
            try
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(objQuery.insertSaleOutwards, con);
                cmd.Parameters.AddWithValue("@saleId", objSaleOutwards.saleId);
                cmd.Parameters.AddWithValue("@productId", objSaleOutwards.productId);
                cmd.Parameters.AddWithValue("@isActive", objSaleOutwards.isActive);
                cmd.Parameters.AddWithValue("@qnty", objSaleOutwards.qnty);

                ReturnValue = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
            finally
            {
                con.Close();
            }
            return ReturnValue;

        }

        public DataTable DA_GetProductsBySaleId(int SaleId)
        {
            DataTable dt = new DataTable();
            try
            {
                MySqlCommand cmd = new MySqlCommand(objQuery.getProductsBySaleId, con);
                cmd.Parameters.AddWithValue("@saleId", SaleId);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                ex.ToString();
                //throw;
            }
            return dt;
        }

        public DataTable DA_GetSaleReport()
        {
            MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
            DataTable dt = new DataTable();
            MySqlCommand cmd = new MySqlCommand(new QueryProcessor().GetSaleReport, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            return dt;
        }
    }


}



