using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;

public partial class Admin_setnews : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                loadlist();

            }

        }
        catch (Exception ex)
        { }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "Delete")
        {
            string id = e.CommandArgument.ToString();
            objcon.ExecuteSqlQuery("delete from tblnews where id='" + id + "'");

            lbinfo.Text = "Delete Successfully";
            info.Visible = true;
            loadlist();
        }
        if (e.CommandName == "Update")
        {
            string id = e.CommandArgument.ToString();
            hndNewId.Value = id;
            Label Status = e.Item.FindControl("Status") as Label;

            if (Status.Text == "Active")
            {
                objcon.ExecuteSqlQuery("update tblproduct set status='InActive',islive='1' where packid='" + id + "'");

                lbinfo.Text = "Package has become inactive.";
                info.Visible = true;
                loadlist();
            }
            else if (Status.Text == "InActive")
            {
                objcon.ExecuteSqlQuery("update tblproduct set status='Active',islive='0' where packid='" + id + "'");

                lbinfo.Text = "Package has become Active.";
                info.Visible = true;
                loadlist();
            }
        }

    }
    private void loadlist()
    {
        try
        {
            string sql = "select Product,	(MRP+SoldRate) as amount,	PackID	,	Status,	Islive from  tblproduct";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
        catch (Exception ex)
        { }
    }
    
}