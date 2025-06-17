using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITTransaction;
using TripleITConnection;
public partial class User_Default2 : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
  
    public List<clsaccount> objacclist = new List<clsaccount>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("newuser") != null || SessionData.Get<string>("newuser") == "")
        {
            if (!IsPostBack)
            {

                loadaccount(SessionData.Get<string>("newuser"));
            }
        }
        else
        {

            Response.Redirect("logout.aspx");
        }

    }
    //for account
    public void loadaccount(string username)
    {
        try
        {
            string sql = "select a.username,a.credit,a.debit,a.date,a.remark from account a inner join  register r on  a.username=r.username and a.valu='LTI' and  a.username='" + username + "'";
            if (txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += "and a.date between '" + txtfromdate.Text + "' and '" + txttodate.Text + "'";
              
            }
            sql += "order by a.date asc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                
                decimal total = dt.AsEnumerable().Sum(row => row.Field<decimal>("Credit"));

                // Bind the data to GridView
                grdData.DataSource = dt;
                grdData.DataBind();

                // Access the FooterRow only if it's not null
                if (grdData.FooterRow != null)
                {
                    grdData.FooterRow.Cells[2].Text = "Total";
                    grdData.FooterRow.Cells[2].HorizontalAlign = HorizontalAlign.Center;
                    grdData.FooterRow.Cells[2].Font.Bold = true;
                    grdData.FooterRow.Cells[3].Font.Bold = true;
                    grdData.FooterRow.Cells[3].Text = total.ToString("N2") + " USDT";
                }
            }
        }
        catch (Exception ex)
        {

        }


    }

    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdData.PageIndex = e.NewPageIndex;
        //   this.BindGrid();
        loadaccount(SessionData.Get<string>("newuser"));
    }


    protected void btnSeach_Click(object sender, EventArgs e)
    {
        loadaccount(SessionData.Get<string>("newuser"));
    }

}