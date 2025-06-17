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
public partial class Admin_rptlevelIncome : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    
    public List<clsaccount> objacclist = new List<clsaccount>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            loadlist();
        }
     
    }
    private void loadlist()
    {
        try
        {
            string sql = "select sum(credit) as credit,sum(debit) as debit, username,sum((credit)-(debit)) as totalincome from account where 1=1";
            
            if (txtsearch.Text != "")
            {
                sql += " and username='" + txtsearch.Text + "'";
            }
            

            sql += " group by username";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                decimal total = 0, credit = 0, debit = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    total += Convert.ToDecimal(dt.Rows[i]["totalincome"].ToString());
                    credit += Convert.ToDecimal(dt.Rows[i]["credit"].ToString());
                    debit += Convert.ToDecimal(dt.Rows[i]["debit"].ToString());


                }
                lbtotal.Text = total.ToString();
                lbcredit.Text = credit.ToString();
                lbdebit.Text = debit.ToString();
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

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        loadlist();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            string username = e.CommandArgument.ToString();
            Response.Redirect("rptViewIncome.aspx?username=" + username + "&type=DIRECT");
        }
    }
    ////protected void btnExportToExcel_Click(object sender, EventArgs e)
    ////{
    ////    try
    ////    {


    ////        Response.Clear();
    ////        Response.Buffer = true;
    ////        Response.AddHeader("content-disposition", "attachment;filename=rptIncome.xls");
    ////        Response.Charset = "";
    ////        Response.ContentType = "application/vnd.ms-excel";

    ////        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
    ////        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
    ////        //     Your Repeater Name Mine is "Rep"
    ////        Repeater1.RenderControl(htmlWrite);
    ////        Response.Write("<table>");
    ////        Response.Write(stringWrite.ToString());
    ////        Response.Write("</table>");
    ////        Response.End();

    ////    }
    ////    catch (Exception ex)
    ////    { }
    ////}

}