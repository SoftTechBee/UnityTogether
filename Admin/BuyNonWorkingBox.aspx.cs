using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITTransaction;
using TripleITConnection;
using System.Data;

using System.Web.Services;
using System.Web.Script.Serialization;
public partial class Admin_BuyNonWorkingBox : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    
    clsDashboard objdash = new clsDashboard();
    public static string Password = "", UserName = "", Sponserid = "", SponserName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            hndboxtype.Value = "X4";//  Request.QueryString["Pack"].ToString();
            lbidnumbers.Text = "1";

            decimal rate = Convert.ToDecimal(drpBoxNo.SelectedValue);
            decimal no = Convert.ToDecimal(lbidnumbers.Text);

            decimal total = rate * no;
            lbtotalamt.Text = total.ToString();
            hndamt.Value = lbtotalamt.Text;
            hndpoolno.Value = drpBoxNo.SelectedItem.ToString();


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
                Label1.Text = dt.Rows[0]["name"].ToString();
             //   hdnmember.Value = lbWallet.Text;

                {

                    // X4();
                   
                    hndholdamt.Value = hndholdamt.Value;
                    hndholdwallet.Value = "0x9541cBCf72aa66030FB8639cB25e180c02982180";

                }

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




    private void X4()
    {
        try
        {
            string sql = "select max(cast(PoolNO as int)) as lastpool  from TblPool5Matrix where reff='" + SessionData.Get<string>("newuser") + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                int lastpool = Convert.ToInt32(dt.Rows[0]["lastpool"].ToString());
                if (lastpool == 1) { hndamt.Value = "50"; hndpoolno.Value = "2"; }
                if (lastpool == 2) { hndamt.Value = "100"; hndpoolno.Value = "3"; }
                if (lastpool == 3) { hndamt.Value = "2500"; hndpoolno.Value = "4"; }
                if (lastpool == 4)
                {
                    hndamt.Value = "0";
                    hndpoolno.Value = "All boxes already buy";

                }

              
            }

        }
        catch (Exception ex)
        { }
    }

    [WebMethod]
    public static string Reinvestment(string Member, string Amount, string Hashcode,string Pack,string TotalEntry)
    {
        clsConnection objcon = new clsConnection();
       
        string  result = "";
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();

        clsAMD objamd = new clsAMD();
        int a = objamd.BoxPurchaseNoofIds(Member, Hashcode, "X4", Convert.ToInt32(Pack), Convert.ToDecimal(Amount), Convert.ToInt32(TotalEntry));
        if (a > 0)
        {
            result = "Success";

        }
        else
        {
            result = "Invaid Transaction";

        }
        return jsSerializer.Serialize(result);



    }


    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
           // lbWallet.Text = "10000";// objdash.TotalFundWallectBlance(SessionData.Get<string>("newuser"));

            int a = objamd.BoxPurchase(SessionData.Get<string>("newuser"), SessionData.Get<string>("newuser"), hndboxtype.Value, 0, 000);
            if (a > 0)
            {
               // lbWallet.Text = "10000";// objdash.TotalFundWallectBlance(SessionData.Get<string>("newuser"));
                lbsuccess.Text = "Box Purchase Successfully";
                success.Visible = true;

            }
            else if (a == -1)
            {

                lbinfo.Text = "insufficient balance";
                info.Visible = true;
            }
            else
            {

                lbinfo.Text = "Box Purchase has not successfull";
                info.Visible = true;
            }

        }
        catch (Exception ex)
        { }


    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void lbidnumbers_TextChanged(object sender, EventArgs e)
    {
        try
        {

            decimal rate = Convert.ToDecimal(drpBoxNo.SelectedValue);
            decimal no = Convert.ToDecimal(lbidnumbers.Text);

            decimal total = rate * no;
            lbtotalamt.Text = total.ToString();
            hndamt.Value = lbtotalamt.Text;
            hndpoolno.Value = drpBoxNo.SelectedItem.ToString();


        }
        catch (Exception ex)
        { }
    }

    protected void drpBoxNo_SelectedIndexChanged(object sender, EventArgs e)
    {
        try {

            decimal rate = Convert.ToDecimal(drpBoxNo.SelectedValue);
            decimal no = Convert.ToDecimal(lbidnumbers.Text);

            decimal total = rate * no;
            lbtotalamt.Text = total.ToString();
            hndamt.Value = lbtotalamt.Text;
            hndpoolno.Value = drpBoxNo.SelectedItem.ToString();

        }
        catch (Exception ex)
        { }
    }
}