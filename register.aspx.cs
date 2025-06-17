using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Data.SqlClient;
using TripleITConnection;
using TripleITTransaction;
using System.Drawing;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Runtime.Remoting.Lifetime;

public partial class Signup : System.Web.UI.Page
{
    clsmail objmail = new clsmail();
    clsfunction objfun = new clsfunction();

    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    //clsSMS objsms = new clsSMS();
    clsDashboard objdash = new clsDashboard();
    string Password = "", UserName = "", Sponserid = "", SponserName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sponsor = Request.QueryString["Sponsor"].ToString();
            hdnsposor.Value = sponsor;
            lbsponsor.Text = sponsor;
           // loadsponsorlist(sponsor);
        }
    }

    




 



  

    [WebMethod]
    public static string WalletBalance(String BNB_ac)
    {
        clsConnection objcon = new clsConnection();

        string result = "";
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();

        DataTable dt1 = objcon.ReturnDataTableSql("select username,name,Reffid,Profilepic,dateofjoin from register where name='" + BNB_ac + "'");
        if (dt1.Rows.Count > 0)
        {
            result = dt1.Rows[0]["username"].ToString();
            SessionData.Put("newuser", dt1.Rows[0]["username"].ToString());
            // SessionData.Put("CSS", "text-success");
            SessionData.Put("newuser", dt1.Rows[0]["username"].ToString());
            SessionData.Put("FullName", "Unity Partner");
            SessionData.Put("Reffid", dt1.Rows[0]["Reffid"].ToString());
            SessionData.Put("name", dt1.Rows[0]["name"].ToString());
            SessionData.Put("Img", dt1.Rows[0]["Profilepic"].ToString());
            SessionData.Put("DateOfJoin", dt1.Rows[0]["dateofjoin"].ToString());
            SessionData.Put("UserType", "User");
        }
        else
        {
            result = "Invaild";
        }

        return jsSerializer.Serialize(result);



    }

    [WebMethod]
    public static String LoadList(string sponsor)
    {
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
        TripleITConnection.clsConnection objlist = new TripleITConnection.clsConnection();
        string sql = "exec [dbo].[PreRegister] '"+ sponsor + "'";
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
    public static string Register1(string referral_id, string hashcode, string wallet_address)
    {
        clsConnection objcon = new clsConnection();
      
        string newuser = "", result = "";
        //newuser = loaduseridsixdigit();
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
       
        clsAMD objamd = new clsAMD();
        int a = objamd.Register(0, referral_id, hashcode, wallet_address, newuser, "123", "25", "", "ALL", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N");
        if (a >= 0)
        {
            //result = newuser;
            //SessionData.Put("newuser", newuser);
            //SessionData.Put("UserType", "User");
            WalletBalance(wallet_address);
        }
        else
        {
            result = newuser;// "Invaid Transaction";

        }
        return jsSerializer.Serialize(result);



    }

}