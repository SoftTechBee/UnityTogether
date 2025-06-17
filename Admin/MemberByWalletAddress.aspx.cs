using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using TripleITTransaction;
using TripleITConnection;
public partial class Admin_MemberByWallet : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsDashboard objdash = new clsDashboard();
    clsConnection objcon = new clsConnection();
   
    public List<clsaccount> objacclist = new List<clsaccount>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
     
    }
    private void loadlist()
    {
        try
        {
            string sql = "select username, reffid, name, reffname from register where name='"+ txtsearch.Text + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
               txtuname.Text= dt.Rows[0]["UserName"].ToString();
               txtSponsor.Text= dt.Rows[0]["reffid"].ToString();
               txtAddress.Text= dt.Rows[0]["name"].ToString();
               txtSponsorAddress.Text= dt.Rows[0]["reffname"].ToString();

            }
            else
            {
                lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        loadlist();
    }

}