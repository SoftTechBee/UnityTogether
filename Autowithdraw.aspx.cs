using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
public partial class Autowithdraw : System.Web.UI.Page
{
    clsConnection objcon=new clsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            callWithdawlist();
        }

    }

    private void callWithdawlist()
    {
        try {

            string sql = "exec [dbo].[AutoWithdrawForAll]";
            int a = objcon.ExecuteSqlQuery(sql);
        
        }
        catch (Exception ex)
        { }
    }
}