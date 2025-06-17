using System;
using System.Activities.Expressions;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;

public partial class Admin_MultisendWithdrawbyContract : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static String LoadList()
    {
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
        TripleITConnection.clsConnection objlist = new TripleITConnection.clsConnection();
        string sql = "exec AutoWithdrawByContractList 'l'";
        DataTable dt = objlist.ReturnDataTableSql(sql);
        if (dt.Rows.Count > 0)
        {
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataRow row in dt.Rows)
            {
                childRow = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    childRow.Add(col.ColumnName, row[col]);
                }
                parentRow.Add(childRow);
            }
            return jsSerializer.Serialize(parentRow);
        }
        else
        {
            return "0";
        }



    }

    [WebMethod]
    public static string updateWithdraw(string hashcode)
    {
        clsConnection objcon = new clsConnection();

        string newuser = "", result = "";
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();

        clsAMD objamd = new clsAMD();
        int a = objamd.AutoWithdrawWithContractUpdate( hashcode, "A");
        if (a >= 0)
        {
            
            result = "Ok";
        }
        else
        {
            result = newuser;// "Invaid Transaction";

        }
        return jsSerializer.Serialize(result);


    }
}