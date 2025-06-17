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

public partial class User_S2Pack : System.Web.UI.Page
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
              List<S2Slot> objlist = new List<S2Slot>();
            
            objlist.Add(new S2Slot { name = "2.5 USDT", PoolNo="1", PoolName="SMALL BOX" });
            objlist.Add(new S2Slot { name = "50 USDT", PoolNo="2", PoolName = "CURRENCY BOX" });
            objlist.Add(new S2Slot { name = "100 USDT", PoolNo="3", PoolName = "SWISS BOX" });
            objlist.Add(new S2Slot { name = "2500 USDT", PoolNo="4", PoolName = "DREAM BOX" });
            

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
                string areeb = "exec [dbo].[DashBoardSlotStatus]'" + SessionData.Get<string>("Newuser") + "'";
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
                                lblevel1.Text = dt.Rows[i]["S1"].ToString();

                                Label lblevel2 = (Label)e.Item.FindControl("lblevel2");
                                lblevel2.Text = dt.Rows[i]["S2"].ToString();

                                Label lbLevel3 = (Label)e.Item.FindControl("lbLevel3");
                                lbLevel3.Text = dt.Rows[i]["S3"].ToString();

                                Label lbLevel4 = (Label)e.Item.FindControl("lbLevel4");
                                lbLevel4.Text = dt.Rows[i]["S4"].ToString();

                                Label lbLevel5 = (Label)e.Item.FindControl("lbLevel5");
                                lbLevel5.Text = dt.Rows[i]["S5"].ToString();

                                Label lbLevel6 = (Label)e.Item.FindControl("lbLevel6");
                                lbLevel6.Text = dt.Rows[i]["S6"].ToString();

                                Label lbLevel7 = (Label)e.Item.FindControl("lbLevel7");
                                lbLevel7.Text = dt.Rows[i]["S7"].ToString();

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
            Sql += " from tbls2 Where Reff = '" + SessionData.Get<string>("Newuser") + "'";
            DataTable Rs = objcon.ReturnDataTableSql(Sql);
            if (Rs.Rows.Count != 0)
            {
                int nextpack = Convert.ToInt32(Rs.Rows[0]["Package"].ToString()) + 1;

                if (nextpack == Convert.ToInt32(hndPackage.Value))
                {
                    Response.Redirect("BuyNow.aspx?Pack=X4");

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
public class S2Slot
{
    public string name {get;set;}
    public string PoolNo {get;set;}
    public string PoolName {get;set;}
}