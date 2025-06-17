using System;
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

public partial class Login : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsAMD objamd = new clsAMD();
    clsList objlist = new clsList();
   
    clsTimeZone objtime = new clsTimeZone();
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            lbmsg.Visible = false;

        }
    }

    [WebMethod]
    public static string WalletBalance(String BNB_ac)
    {
        clsConnection objcon = new clsConnection();

        string result = "";
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
        clsList objlist = new clsList();
        DataTable dt1 = objlist.LoginCheck(BNB_ac,"", "W");
        if (dt1.Rows.Count > 0)
        {
            result = dt1.Rows[0]["username"].ToString();
            SessionData.Put("Newuser", dt1.Rows[0]["username"].ToString());

            SessionData.Put("newuser", dt1.Rows[0]["username"].ToString());
            SessionData.Put("FullName", "World Speak");
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
    protected void btnview_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable dt = objlist.LoginCheck("", "", "V");
            if (dt.Rows.Count > 0)
            {
                string status = dt.Rows[0]["LoginStatus"].ToString();
                if (status == "False")
                {
                    SessionData.Put("newuser", dt.Rows[0]["username"].ToString());
                    SessionData.Put("FullName", dt.Rows[0]["fname"].ToString());
                    SessionData.Put("Reffid", dt.Rows[0]["Reffid"].ToString());
                    SessionData.Put("name", dt.Rows[0]["name"].ToString());
                    SessionData.Put("Img", dt.Rows[0]["Profilepic"].ToString());
                    SessionData.Put("DateOfJoin", dt.Rows[0]["dateofjoin"].ToString());
                    SessionData.Put("UserType", "View");
                    Response.Redirect("~/View/Home.aspx", false);
                }
                else
                {
                    //lbviewmsg.Visible = true;
                    //lbviewmsg.Text = "your income limit exceeded,please contact to admin";
                    //txtview.Text = "";
                    //txtUserName.Text = "";
                    Response.Write("<script>alert('your income limit exceeded, please contact to admin')</script>");
                }
            }
            else
            {
                //lbviewmsg.Visible = true;
                //lbviewmsg.Text = "Invalid Member";
               // txtview.Text = "";
                // txtUserName.Text = "";
                //Response.Write("<script>alert('Invalid Username or Password')</script>");
            }

        }
        catch (Exception ex)
        {
            //lbviewmsg.Visible = true;
            //lbviewmsg.Text = "Invalid Member";
            //txtview.Text = "";
            // txtUserName.Text = "";
        }
    }
}