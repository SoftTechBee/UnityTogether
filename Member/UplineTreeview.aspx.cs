using System.Data;
using TripleITConnection;
using TripleITTransaction;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Web.Script;
using System.Xml.Linq;
using System.Collections.Generic;
using System;

public partial class Admin_Account : System.Web.UI.Page
{
    public static string UserName = "";
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
   
    public static string username = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        username =Request.QueryString["upline"].ToString()=="0"? SessionData.Get<string>("newuser") : Request.QueryString["upline"].ToString();

            UserName = SessionData.Get<string>("Newuser");
            FunTreeView(username);
        }
    }

    public void  FunTreeView(string username)
    {
        try
        {
            string sql = "EXEC [dbo].[UplineView]@Sponser ='" + username + "'";
          

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {


                lbusername.Text = dt.Rows[0]["username"].ToString();
               // lbUserWallet.Text = dt.Rows[0]["UserWallet"].ToString();
                lbUpline.Text = dt.Rows[0]["upline"].ToString();
               // lbReffWallet.Text = dt.Rows[0]["reffwallet"].ToString();
            }
            else
            {
               
            }
  

        }
        catch (Exception ex)
        {

        }

       

    }




    //protected void btnsearch_Click(object sender, EventArgs e)
    //{
    //    username = txtsearch.Text.Trim();
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        FunTreeView(lbUpline.Text);
    }
}