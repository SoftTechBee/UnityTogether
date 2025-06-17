using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;

public partial class Member_Default : System.Web.UI.Page
{
    public static string UserName = "";
    clsConnection objcon = new clsConnection();
    clsDashboard objdashboard = new clsDashboard();
    clsList objlist = new clsList();
    clsAMD objamd = new clsAMD();
    clsTimeZone objtime = new clsTimeZone();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("Newuser") != null)
        {
            try
            {
              
                loaddashboard();
            }
            catch (Exception ex)
            { }
        }
        else
        {
            Response.Redirect("logout.aspx");
        }
    }

    private void loaddashboard()
    {
        try {
             DataTable dt = objlist.DashboardList(SessionData.Get<string>("Newuser"),"I");
            if (dt.Rows.Count > 0)
            {
               lbpool1.Text = dt.Rows[0]["POOl1"].ToString(); 
               lbpool2.Text = dt.Rows[0]["POOl2"].ToString(); 
               lbpool3.Text = dt.Rows[0]["POOl3"].ToString(); 
               lbpool4.Text = dt.Rows[0]["POOl4"].ToString(); 
               lbpool5.Text = dt.Rows[0]["POOl5"].ToString(); 
               lbpool6.Text = dt.Rows[0]["POOl6"].ToString(); 
               lbpool7.Text = dt.Rows[0]["POOl7"].ToString(); 
               lbpool8.Text = dt.Rows[0]["POOl8"].ToString(); 
               lbpool9.Text = dt.Rows[0]["POOl9"].ToString(); 
               lbpool10.Text = dt.Rows[0]["POOl10"].ToString(); 
               lbpool11.Text = dt.Rows[0]["POOl11"].ToString(); 
               lbpool12.Text = dt.Rows[0]["POOl12"].ToString(); 
              
               // lbM6SlotIncome.Text = dt.Rows[0]["X5"].ToString();
                lbdirectIncome.Text = dt.Rows[0]["DIRECT"].ToString();
                lbpoolincome.Text = dt.Rows[0]["POOL"].ToString();
                lbrewardincome.Text = dt.Rows[0]["REWARD"].ToString();
                lbrecievedIncome.Text = dt.Rows[0]["TotalIncome"].ToString();
                //lbroyalty.Text = dt.Rows[0]["Royalty"].ToString();
                lbHoldIncome.Text = dt.Rows[0]["HoldIncome"].ToString();
                //lbwalletbance.Text = dt.Rows[0]["WalletBalance"].ToString();


            }


        }
        catch (Exception ex)
        {
            throw;
        }
    }

    [WebMethod]
    public static String S1Slot()
    {
        clsConnection objlist = new clsConnection();
        
       
        string sql = "EXEC [dbo].[DashBoard]@UserName='" + SessionData.Get<string>("Newuser") + "',@Type='S'";
     
        DataTable table = objlist.ReturnDataTableSql(sql);

        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
        List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
        Dictionary<string, object> childRow;
        foreach (DataRow row in table.Rows)
        {
            childRow = new Dictionary<string, object>();
            foreach (DataColumn col in table.Columns)
            {
                childRow.Add(col.ColumnName, row[col]);
            }
            parentRow.Add(childRow);
        }
        return jsSerializer.Serialize(parentRow);

    }
   
   




}