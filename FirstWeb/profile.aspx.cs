using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWeb
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["name"];
            Label2.Text = Request.QueryString["ID"];

            if (Session["username"] != null)
            {
                string script = "alert(\"Login Successful..!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else {
                string script = "alert(\"Login Failed..!\");";
                Response.Redirect("Login.aspx");
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            try
            {
                int ID = int.Parse(TBuid.Text); 
                SqlConnection newconnection;
                newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
                newconnection.Open();
                string qry = "select GroupID from [rol] where UserID='" + ID + "'";
                SqlCommand cmd = new SqlCommand(qry, newconnection);
                SqlDataReader sdr = cmd.ExecuteReader();
                int role = 0;
                
                if (sdr.Read())
                {
                    role = sdr.GetInt32(0);
                    if (role == 1)
                    {
                        Response.Redirect("ProfileAdmin.aspx");
                    }
                    else
                    {
                        Response.Redirect("ProfileUser.aspx");
                    }
                }
                else
                {
                    string script = "alert(\"Login Failed..!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                newconnection.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}