using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;


public partial class login : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsAMD objamd = new clsAMD();
    clsList objlist = new clsList();
   
    clsTimeZone objtime = new clsTimeZone();
   
    clsmail onjmail = new clsmail();
    clsDashboard objDash = new clsDashboard();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string sql = "select * from TblAdmin where aid='1'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                string EMAIL = dt.Rows[0]["Email"].ToString();
                string OTP = dt.Rows[0]["OTP"].ToString();
                string OLDTIME = dt.Rows[0]["OTPTIME"].ToString();

            }
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "select * from TblAdmin where aid='1'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                string EMAIL = dt.Rows[0]["Email"].ToString();
                string OTP = dt.Rows[0]["OTP"].ToString();
                string OLDTIME = dt.Rows[0]["OTPTIME"].ToString();
                string Currenttime = objtime.returnStringServerMachTimeHHMM();

                TimeSpan Time = Convert.ToDateTime(Currenttime) - Convert.ToDateTime(OLDTIME);
                if (txtOtp.Text == OTP)
                {


                    if (Time.TotalSeconds <= 1800)
                    {
                        txtOtp.Text = OTP;

                        msg.Visible = false;
                        lbotptime.Visible = false;


                        objcon.ExecuteSqlQuery("Update TblAdmin set OTP='EV@XXX@123' where aid='1'");
                        Response.Redirect("~/Admin/Home.aspx", false);



                    }
                    else
                    {

                        lbotptime.Text = "OTP Time Out...!  Please Enter Resent  OTP.";
                        lbotptime.Visible = true;

                        msg.Visible = false;
                        txtOtp.Text = "";
                    }
                }
                else
                {
                    msg.Text = "OTP Invalid...!  Please Enter Valid OTP.";
                    msg.Visible = true;

                    lbotptime.Visible = false;
                    txtOtp.Text = "";
                }

            }


        }
        catch (Exception ex)
        {
            
        }


    }


}