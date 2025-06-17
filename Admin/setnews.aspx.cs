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
            Label lbTitle = e.Item.FindControl("lbTitle") as Label;
            Label lbnews = e.Item.FindControl("lbnews") as Label;
            txthead.Text = lbTitle.Text;
            txtnews.Text = lbnews.Text;

            bntsubmit.Text = "Update";
        }

    }
    private void loadlist()
    {
        try
        {
            string sql = "select * from tblnews";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
        catch (Exception ex)
        { }
    }
    protected void bntsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string date = objtime.returnStringServerMachTime();
            if (bntsubmit.Text == "Save")
            {
                string sql = "insert into tblnews(tittle,news,date)values('" + txthead.Text + "','" + txtnews.Text + "','" + date + "')";
                int a = objcon.ExecuteSqlQuery(sql);
                if (a > 0)
                {
                    lbinfo.Text = "News Added Successfully";
                    info.Visible = true;
                    loadlist();
                    Clear();

                }
                else
                {
                    lbinfo.Text = "News has not added Successfully";
                    info.Visible = true;
                    loadlist();
                    Clear();

                }
            }
            if (bntsubmit.Text == "Update")
            {
                string sql = "Update TblNews set Tittle='" + txthead.Text + "', News='" + txtnews.Text + "' where id='" + hndNewId.Value + "'";
                int a = objcon.ExecuteSqlQuery(sql);
                if (a > 0)
                {
                    lbinfo.Text = "News Updated Successfully !!!";
                    info.Visible = true;
                    loadlist();
                    Clear();

                }
                else
                {
                    lbinfo.Text = "Unable to Update News !!!";
                    info.Visible = true;
                    loadlist();
                    Clear();

                }
            }



        }
        catch (Exception ex)
        { }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "del")
        {
            string id = e.CommandArgument.ToString();

            objcon.ExecuteSqlQuery("delete from tblnews where id='" + id + "'");

            lbinfo.Text = "Delete Successfully";
            info.Visible = true;
            loadlist();
        }
    }

    private void Clear()
    {
        try
        {
            txtnews.Text = "";
            txthead.Text = "";
        }
        catch (Exception ex)
        {

        }
    }
}