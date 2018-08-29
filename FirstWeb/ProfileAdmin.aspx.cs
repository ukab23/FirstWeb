using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWeb
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label2.Text = Request.QueryString["name"];
                int uid = int.Parse(Request.QueryString["ID"]);

            }
            else
            {
                string script = "alert(\"Login Failed..!\");";
                Response.Redirect("Login.aspx");
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }

            
        }

 
    }
}