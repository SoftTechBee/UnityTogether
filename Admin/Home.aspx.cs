using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;


public partial class Admin_Default : System.Web.UI.Page
{
    clsfunction objfun = new clsfunction();
    clsDashboard objdash = new clsDashboard();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            lbTotalDeposite.Text = objdash.CompanyTurnOver();
            //lbTotalWithdrawal.Text = objdash.Totalwithdraw();
            //lbpendingwithdraw.Text = objdash.Totalwithdraw();
            //lbCompanyNetBalance.Text = (Convert.ToDecimal(lbTotalDeposite.Text) - Convert.ToDecimal(lbTotalWithdrawal.Text)).ToString();
            lbTotalMember.Text = objfun.AllUser("1");
            //lbTodayJoin.Text = objfun.UserStatus("1", "Active");
            lbpaidmember.Text = objfun.UserStatus("0", "Active");
            //lbfreemember.Text = objfun.UserStatus("0", "Not Active");
            //income
			
            lbdirect.Text = objdash.IncomeType("Admin", "Direct");
            lbpool.Text = objdash.IncomeType("Admin", "POOL");
            lbreward.Text = objdash.IncomeType("Admin", "Reward");
           // lbRoyalty.Text = objdash.IncomeType("Admin", "Royalty");
         //   lbteamlevelincome.Text = objdash.IncomeType("Admin", "Currency Box");
            //lbslotincome.Text = objdash.IncomeType("Admin", "Swiss Box");
            //lbslotupline.Text = objdash.IncomeType("Admin", "Dream Box");
            //lbsponsorincome.Text = objdash.IncomeType("Admin", "Small Box");
            //lbroyalty.Text = objdash.IncomeType("Admin", "ROYALTY");
            //lbteambusiness.Text = objdash.TotalTeamBusness();


        }

    }

}