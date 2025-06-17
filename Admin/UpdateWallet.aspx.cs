using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITTransaction;
using TripleITConnection;
using System.Data;

public partial class Member_UpdateWallet : System.Web.UI.Page
{
    clsAMD objamd = new clsAMD();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("Admin") == null && SessionData.Get<string>("Admin") == "")
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
               // hndsponser.Value = SessionData.Get<string>("newuser");
               // hndPackNo.Value = Request.QueryString["PackNo"].ToString();
               
;            }

        }
    }

    protected void txtSponsor_TextChanged(object sender, EventArgs e)
    {
        try
        {

            string sql = "select username,name from register where  username='" + txtSponsor.Text.Trim() + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                info.Visible = false;
                lbwallet.Text = dt.Rows[0]["name"].ToString();
               

            }
            else
            {
                txtSponsor.Text = "";
                txtSponsor.Focus();
                lbinfo.Text = "Invaid Member ID";
                info.Visible = true;
            }
        }
        catch (Exception ex)
        { }
    }

    

    protected void txtHashcode_TextChanged(object sender, EventArgs e)
    {
        try {
          
            string sql = "select username from register where name='" + txtNewWallet.Text.Trim() + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                lbdanger.Text = "This wallet address  already used";
                txtNewWallet.Text = "";
                txtNewWallet.Focus();
                danger.Visible = true;
            }
            else
            {
                danger.Visible = false;

            }

        }
        catch (Exception ex)
        { }
    }
   protected void bntsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtNewWallet.Text != "0")
            {
                string sql = "update register set name='" + txtNewWallet.Text.Trim() + "' where username='" + txtSponsor.Text + "'";
                string sql1 = "insert into  OldNewWallet(username,oldwallet,newwallet,Date) values('" + txtSponsor.Text.Trim() + "','" + lbwallet.Text.Trim() + "','" + txtNewWallet.Text.Trim() + "','" + objtime.returnStringServerMachTimeHHMM() + "')";
                int status1 = objcon.ExecuteSqlQuery(sql1);
                int status = objcon.ExecuteSqlQuery(sql);
                if (status > 0)
                {
                    lbsuccess.Text = "Success";
                    sccess.Visible = true;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lbsuccess.Text = "Try Again";
                    sccess.Visible = true;
                }
            }
        }
        catch (Exception ex)
        { }
    }
}