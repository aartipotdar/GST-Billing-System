using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BAL;

namespace GSTBillingSystem
{
    public partial class SaleReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindSaleReport();
            }
        }
        public void BindSaleReport()
        {
            DataTable dtSaleReport = new DataTable();
            BAProduct objProduct = new BAProduct();
            dtSaleReport = objProduct.BA_GetSaleReport();
            if (dtSaleReport != null)
            {
                if (dtSaleReport.Rows.Count > 0)
                {
                    grdSaleReport.DataSource = dtSaleReport;
                    grdSaleReport.DataBind();
                }
            }
        }
    }
}