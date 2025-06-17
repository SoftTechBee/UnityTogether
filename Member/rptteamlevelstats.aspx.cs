using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;
public partial class User_rptPoolMemberStatus : System.Web.UI.Page
{

    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            LoadData();
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();
        }


    }
    protected void drppack_TextChanged(object sender, EventArgs e)
    {

        try
        {
            LoadData();


        }
        catch (Exception ex)
        { }

    }
    public void LoadData()
    {
        try
        {
            string username = SessionData.Get<string>("Newuser");
            string sql = "select p.*,t.* from TblPool2Matrix p inner join [TblAutoPoolTeam] t on t.lid = p.id where p.reff ='" + username + "'";
            //if (drppack.SelectedValue != "0")
            //{
            //     sql += " and p.poolno ='" + drppack.SelectedValue + "'";

            //}
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                danger.Visible = false;
            }
            else
            {
                lbdanger.Text = "OOPS! NO DATA FOUND.";
                danger.Visible = true;
            
            }
            grdData.DataSource = dt;
            grdData.DataBind();

        }
        catch (Exception ex)
        {

        }


    }

    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdData.PageIndex = e.NewPageIndex;
        //   this.BindGrid();
        LoadData();
    }

}

