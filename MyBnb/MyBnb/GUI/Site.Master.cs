using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MyBnb
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_LogOut_Master_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GUI/MyBnB_Login.aspx");
        }
    }
}
