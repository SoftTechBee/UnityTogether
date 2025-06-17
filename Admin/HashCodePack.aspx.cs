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

public partial class Member_BuyNextPackage : System.Web.UI.Page
{
    clsAMD objamd = new clsAMD();
    clsConnection objcon = new clsConnection();
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
                bntsubmit.Visible = false;
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
                X3(dt.Rows[0]["username"].ToString());

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
          
            string sql = "select username from tbltransactions where HashCode='" + txtHashcode.Text.Trim() + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                lbdanger.Text = "This hashcode already used";
                txtHashcode.Text = "";
                txtHashcode.Focus();
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
    private void X3(string Member)
    {
        try
        {
            string sql = "select max(cast(PoolNO as int)) as lastpool from TblPool2Matrix where reff='" + Member + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                int lastpool = Convert.ToInt32(dt.Rows[0]["lastpool"].ToString());
                bntsubmit.Visible = true;
                if (lastpool == 1) { lbamt.Text = "45"; lbslot.Text = "2"; }
                if (lastpool == 2) { lbamt.Text = "85"; lbslot.Text = "3"; }
                if (lastpool == 3) { lbamt.Text = "165"; lbslot.Text = "4"; }
                if (lastpool == 4) { lbamt.Text = "325"; lbslot.Text = "5"; }
                if (lastpool == 5) { lbamt.Text = "645"; lbslot.Text = "6"; }
                if (lastpool == 6) { lbamt.Text = "1285"; lbslot.Text = "7"; }
                if (lastpool == 7) { lbamt.Text = "2565"; lbslot.Text = "8"; }
                if (lastpool == 8) { lbamt.Text = "5125"; lbslot.Text = "9"; }
                if (lastpool == 9) { lbamt.Text = "10245"; lbslot.Text = "10"; }
                if (lastpool == 10) { lbamt.Text = "20485"; lbslot.Text = "11"; }
                if (lastpool == 11) { lbamt.Text = "40965"; lbslot.Text = "12";  }
               if(lastpool == 12){
                    lbslot.Text = "All Slot Buy";
                    lbamt.Text = "0";
                    bntsubmit.Visible = false;

                }
                //if (lastpool == 13) { lbamt.Text = "20480";  lbslot.Text = "14"; }
                //if (lastpool == 14) { lbamt.Text = "4960";  lbslot.Text = "15"; }
               

            }

        }
        catch (Exception ex)
        { }
    }
    protected void bntsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (lbamt.Text != "0")
            {
                int status = objamd.BoxPurchase(txtSponsor.Text.Trim(), txtHashcode.Text.Trim(), "A", Convert.ToInt32(lbslot.Text), Convert.ToDecimal(lbamt.Text));
                if (status > 0)
                {
                    lbsuccess.Text = "Success";
                    sccess.Visible = true;
                   // Response.Redirect("Home.aspx");
                }
                else
                {
                    lbsuccess.Text = "Try Again";
                    sccess.Visible = true;
                }
            }
            else
            {
                lbsuccess.Text = "Try Again";
                sccess.Visible = true;
            }
        }
        catch (Exception ex)
        { }
    }
}