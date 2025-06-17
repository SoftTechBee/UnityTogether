using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;
using System.Data;
public partial class User_Default : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    //clsSMS objsms = new clsSMS();
    clsDashboard objdash = new clsDashboard();
    string Password = "", UserName = "", Sponserid = "", SponserName = "";
    clsmail objmail = new clsmail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (SessionData.Get<string>("Newuser") == null)
            {
                Response.Redirect("logout.aspx");
            }
            else
            {
                info.Visible = false;
                sccess.Visible = false;


            }

        }
    }

  


  

    protected void drpSponser_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            DataTable dt2 = objcon.ReturnDataTableSql("select username,name from register where username='" + lbSponser.Text + "' order by username asc");
            if (dt2.Rows.Count > 0)
            {
                lbSponserName.Text = dt2.Rows[0]["name"].ToString();
                Visible = true;
                info.Visible = false;
                sccess.Visible = false;
            }
            else
            {
                lbSponserName.Text = "Invaild Sponsor Name";
                lbSponser.Text = "";
                lbSponser.Focus();
                Visible = true;
            }

        }
        catch (Exception ex)
        { }
    }

    protected void bntsubmit_Click(object sender, EventArgs e)
    {
        try
        {
           
              
                    string TransactionPassword ="123";
                  
                         UserName = "";
                     string DOJ = objtime.returnStringServerMachTime();
            string DOB = "";
                    string name = txtFirstName.Text ;
                    int a = objamd.Register(0, lbSponser.Text, txtHashCode.Text, txtwallet.Text, UserName, "123", txtwallet.Text, name, "", DOJ, "","", "","", "", "", "Active", "", "", "", "", "", "","", DOB,"", "", "", "", "", "", DOJ, "", DOJ, TransactionPassword, "../dist/img/user2-160x160.jpg", "", "", "N");

                    if (a > 0)
                    {
                           
                           
                        string Username = objdash.RetrunUserName(txtwallet.Text);

                        lbsuccess.Text = "Account Created : Username: "+ Username + " , Pass: Admin@123 , Wallet: " + txtwallet.Text + "";
                        sccess.Visible = true;
                info.Visible = false;
            }
                    else if (a == -1)
                    {

                        lbinfo.Text = "Record already inserted";
                        info.Visible = true;
                sccess.Visible = false;

            }
            else
                    {

                        lbinfo.Text = "Record has not insert successfully";
                        info.Visible = true;
                    }

               
           
        }
        catch (Exception ex)
        { }
    }
    public void Clear()
    {
        Password = "";
       
        //txtEmail.Text = "";
   
        //txtMobile.Text = "";
       
       
        //lbUserName.Text = "";
        lbSponserName.Text = "";
    
        lbSponser.Text = "";
        //txtMobile.Text = "";
        

    }
   
}