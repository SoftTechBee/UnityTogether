using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
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
   
    clsmail onjmail = new clsmail();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            lbmsg.Visible = false;
            
        }
    }
    private string genrateOTP()
    {
        string OTP = "";
        try
        {


            var chars = "5678943210";
            var stringChars = new char[8];
            var random = new Random();

            for (int ik = 0; ik < stringChars.Length; ik++)
            {
                stringChars[ik] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            OTP = Convert.ToString(finalString);

        }
        catch (Exception ex) { }
        return OTP;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {

            DataTable dt = objlist.LoginCheck(txtUserName.Text.Trim(), txtPassword.Text.Trim(), "A");
            if (dt.Rows.Count > 0)
            {
                string EMAIL = dt.Rows[0]["Email"].ToString();

                SessionData.Put("newuser", dt.Rows[0]["username"].ToString());
                SessionData.Put("name", dt.Rows[0]["name"].ToString());
                SessionData.Put("UserType", "Admin");

                //string OTP = genrateOTP();
                //string time = objtime.returnStringServerMachTimeHHMM();
                //string sql = "Update TblAdmin set OTP='" + OTP + "', OTPTIME='" + time + "' where aid='1'";
                //int a = objcon.ExecuteSqlQuery(sql);
                //string msge = "One Time password (OTP) is mentioned To verify your account ownership below <br /> Your Login OTP is :-<h1><b>" + OTP + "</b></h1>";
                //onjmail.OTP("", OTP, EMAIL);
                //Response.Redirect("AdminAuthenticator.aspx");
                Response.Redirect("~/Admin/Home.aspx", false);

            }
            else
            {
                lbmsg.Visible = true;
                lbmsg.Text = "Invalid Username or Password";
                txtPassword.Text = "";
                txtUserName.Text = "";
                //Response.Write("<script>alert('Invalid Username or Password')</script>");
            }

        }
        catch (Exception ex)
        {
            lbmsg.Visible = true;
            lbmsg.Text = "Invalid Username or Password";
            txtPassword.Text = "";
            txtUserName.Text = "";
        }
    }
}