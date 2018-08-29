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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {

            try
            {
                string username = Tblusername.Text;
                string password = Tblpassword.Text;
                SqlConnection newconnection;
                newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
                newconnection.Open();
                string qry = "select * from [Login1] where username='" + username + "' and Password='" + password + "'";
                SqlCommand cmd = new SqlCommand(qry, newconnection);
                SqlDataReader sdr = cmd.ExecuteReader();
                
                if (sdr.Read())
                {
                    int ID = (int)sdr["UserID"];
                    string name = (string)sdr["username"];
                    Session["username"] = name;
                    Session["UserID"] = ID;
                    
                    if (ID == 1)
                    {
                        string url;
                        url = "ProfileAdmin.aspx?name=" +
                            name + "&ID=" +
                            ID;
                        Response.Redirect(url);
                    }
                    else
                    {
                        string url;
                        url = "ProfileUser.aspx?name=" +
                            name + "&ID=" +
                            ID;
                        Response.Redirect(url);
                       
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