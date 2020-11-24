using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.Data;
using MySql.Data.MySqlClient;


namespace DAL
{
   public  class DAInward
    {
         QueryProcessor objQuery = new QueryProcessor();
        MySqlConnection con = new MySqlConnection(Properties.Settings.Default.con_string);
  
       
        //public int DAAddInwarddetails(Inward objInwarddetails)
        //{
        //    int ReturnValue = 0;
                     
        //    con.Open();
        //    MySqlCommand cmd=new MySqlCommand(objQuery.insertInward,con);
        //    ReturnValue = cmd.ExecuteNonQuery();
        //    con.Close();
        //    return ReturnValue;
        //}
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
    }
  }

