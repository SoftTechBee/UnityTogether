using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITTransaction;
using TripleITConnection;
public partial class Admin_WalletApprovedList : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsAMD objamd = new clsAMD();
    clsTimeZone objtime = new clsTimeZone();
    clsConnection objcon = new clsConnection();
    public List<clsuser> objuserlist = new List<clsuser>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loaddirect();
        }
    }
    public void loaddirect()
    {
        try
        {
            //DOI between '" + txtfromdate.Text + "' and '" + txttodate.Text + "' and
            string sql = "select amount,Payout,AdminCharge,DOA,status,username from tblrwithdraw where 1=1  ";
            if (txtsearch.Text != "")
            {
                sql += " and DOA='" + txtsearch.Text + "'";
            }
            sql += " order by DOA desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                decimal total = 0;
                decimal Amounttotal = 0;
                decimal Payouttotal = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    total += Convert.ToDecimal(dt.Rows[i]["AdminCharge"].ToString());
                    Amounttotal += Convert.ToDecimal(dt.Rows[i]["amount"].ToString());
                    Payouttotal += Convert.ToDecimal(dt.Rows[i]["payout"].ToString());


                }
                lbtotal.Text = total.ToString();
                lbAmountTotal.Text = Amounttotal.ToString();
                lbPayoutTotal.Text = Payouttotal.ToString();
                danger.Visible = false;

            }
            else
            {
                lbtotal.Text = "0";
                lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();


        }
        catch (Exception ex)
        {

        }

    }



    protected void btnSeach_Click(object sender, EventArgs e)
    {
        loaddirect();
    }
}