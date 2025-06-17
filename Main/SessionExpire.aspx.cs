using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;

public partial class Login : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsAMD objamd = new clsAMD();
    clsList objlist = new clsList();   
    clsTimeZone objtime = new clsTimeZone();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

        }
    }

}