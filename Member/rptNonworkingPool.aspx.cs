using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;
public partial class User_rptNonworkingPool : System.Web.UI.Page
{

    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    static string poolno = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
             poolno = Request.QueryString["PoolNo"].ToString();
            if (poolno == "1")
            {
                lbhead.Text = "SMALL BOX";
            }
            else if (poolno == "2")
            {
                lbhead.Text = "CURRENCY BOX";
            }
            else if (poolno == "3")
            {
                lbhead.Text = "SWISS BOX";
            }
            else if (poolno == "4")
            {
                lbhead.Text = "DREAM BOX";
            }
          
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
        {  List<clsNonworking> objlist=new List<clsNonworking>();
            string username = SessionData.Get<string>("Newuser");
            string sql = "select m1,m2,m3,m4,m5,slotno,poolno,reff from TblPool5Matrix where reff ='" + username + "' AND poolno='"+poolno+"'";
            if (drppack.SelectedValue != "0")
            {
                sql += " and slotno ='" + drppack.SelectedValue + "'";

            }
            sql += " order by slotno asc ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                danger.Visible = false;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    clsNonworking objpool = new clsNonworking();
                    objpool.Member = dt.Rows[i]["reff"].ToString();
                    objpool.Poolno = dt.Rows[i]["poolno"].ToString();
                    objpool.Levelno = dt.Rows[i]["slotno"].ToString();
                    objpool.M1 = dt.Rows[i]["m1"].ToString()=="0" ? "empty.png" : "tick.png";
                    objpool.M2 = dt.Rows[i]["m2"].ToString()=="0" ? "empty.png" : "tick.png";
                    objpool.M3 = dt.Rows[i]["m3"].ToString()=="0" ? "empty.png" : "tick.png";
                    objpool.M4 = dt.Rows[i]["m4"].ToString()=="0" ? "empty.png" : "tick.png";
                    objpool.M5 = dt.Rows[i]["m5"].ToString()=="0" ? "empty.png" : "tick.png";
                    objlist.Add(objpool);

                }
            }
            else
            {
                lbdanger.Text = "OOPS! NO DATA FOUND.";
                danger.Visible = true;
            
            }
            Repeater1.DataSource = objlist;
            Repeater1.DataBind();

        }
        catch (Exception ex)
        {

        }


    }


    public class clsNonworking
    { 
     public string Member { get; set; }
     public string M1 { get; set; }
     public string M2 { get; set; }
     public string M3 { get; set; }
     public string M4 { get; set; }
     public string M5 { get; set; }
     public string Poolno { get; set; }
     public string  Levelno { get; set; }
    }
}

