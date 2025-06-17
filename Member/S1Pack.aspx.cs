using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI.HtmlControls;

public partial class User_Upgrade : System.Web.UI.Page
{
    public static string UserName = "";
    clsfunction objfun = new clsfunction();
    clsAMD objamd = new clsAMD();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsDashboard objDash = new clsDashboard();
    

    public static string OTP = "", RequestUser="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadPackage();
        }

    }
    private void loadPackage()
    {
        try
        {
              List<S1Slot> objlist = new List<S1Slot>();
            
            objlist.Add(new S1Slot { name = "2.5 USDT", PoolNo="1" });
            objlist.Add(new S1Slot { name = "5 USDT", PoolNo="2" });
            objlist.Add(new S1Slot { name = "10 USDT", PoolNo="3" });
            objlist.Add(new S1Slot { name = "20 USDT", PoolNo="4" });
            objlist.Add(new S1Slot { name = "50 USDT", PoolNo="5" });
            objlist.Add(new S1Slot { name = "100 USDT", PoolNo="6" });
            objlist.Add(new S1Slot { name = "200 USDT", PoolNo="7" });
            objlist.Add(new S1Slot { name = "400 USDT", PoolNo="8" });
            objlist.Add(new S1Slot { name = "800 USDT", PoolNo="9" });
            objlist.Add(new S1Slot { name = "1600 USDT", PoolNo="10" });
            objlist.Add(new S1Slot { name = "3200 USDT", PoolNo="11" });
            objlist.Add(new S1Slot { name = "6400 USDT", PoolNo="12" });
            objlist.Add(new S1Slot { name = "12800 USDT", PoolNo="13" });
            

            Repeater1.DataSource = objlist;
            Repeater1.DataBind();


        }
        catch (Exception ex)
        { }
    }
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.Item ||
              e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string areeb = "exec [dbo].[DashBoardPackageStatus] '" + SessionData.Get<string>("Newuser") + "'";
                DataTable dt = objcon.ReturnDataTableSql(areeb);
                if (dt.Rows.Count != 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {

                        if (dt.Rows[i]["PoolStatus"].ToString() == "True")
                        {
                            HiddenField hndPackage = (HiddenField)e.Item.FindControl("hndpackage");
                            if (hndPackage.Value == dt.Rows[i]["PoolNo"].ToString())
                            {
                                HtmlGenericControl div = e.Item.FindControl("divCheck") as HtmlGenericControl;
                                div.Visible = true;

                                Button btn = (Button)e.Item.FindControl("btnBuy");
                                btn.Visible = false;

                                Label lblevel1 = (Label)e.Item.FindControl("lblevel1");
                                lblevel1.Text = dt.Rows[i]["level1"].ToString();

                                Label lblevel2 = (Label)e.Item.FindControl("lblevel2");
                                lblevel2.Text = dt.Rows[i]["level2"].ToString();

                                Label lbLevel3 = (Label)e.Item.FindControl("lbLevel3");
                                lbLevel3.Text = dt.Rows[i]["Level3"].ToString();

                                Label lbRecycle = (Label)e.Item.FindControl("lbRecycle");
                                lbRecycle.Text = dt.Rows[i]["Recycle"].ToString();

                                //Label MLevel = (Label)e.Item.FindControl("lbDirectIncome");
                                //MLevel.Text = dt.Rows[i]["DirectIncome"].ToString();

                            }
                        }
                    }

                }


            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "BuyNow")
        {
            HiddenField hndPackage = (HiddenField)e.Item.FindControl("hndpackage");

          string  Sql = "Select isnull( max(poolno),0) as Package ";
            Sql += " from TblPoolBinary Where Reff = '" + SessionData.Get<string>("Newuser") + "'";
            DataTable Rs = objcon.ReturnDataTableSql(Sql);
            if (Rs.Rows.Count != 0)
            {
                int nextpack = Convert.ToInt32(Rs.Rows[0]["Package"].ToString()) + 1;

                if (nextpack == Convert.ToInt32(hndPackage.Value))
                {
                    Response.Redirect("BuyNow.aspx?Pack=X3");

                    //int ststus = objamd.BoxPurchase(SessionData.Get<string>("Newuser"), SessionData.Get<string>("Newuser"),
                    //    "X4", hndPackage.Value, 1);

                    //if (ststus > 0) { loadPackage(); }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please Buy Previous Package.');", true);
                }
            }

        }
    }
}
public class S1Slot
{
    public string name {get;set;}
    public string PoolNo {get;set;}
}