using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
namespace FirstWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection newconnection;
            newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
            newconnection.Open();
            string str = "insert into [Login1](username,password,EmailId) values(@username,@password,@EmailId)";
            SqlCommand cmd = new SqlCommand(str, newconnection);
            cmd.Parameters.AddWithValue("@username", Tbusername.Text);
            cmd.Parameters.AddWithValue("@password", Tbpassword.Text);
            cmd.Parameters.AddWithValue("@EmailId", Tbemail.Text);
            cmd.ExecuteNonQuery();
            newconnection.Close();
            Response.Redirect("Uinfo.aspx");
        }

        protected void TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Tbusername.Text))
            {
                string username = Tbusername.Text;
                SqlConnection newconnection;

                newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
                newconnection.Open();
                string qry = "select * from [Login1] where username='" + username + "'";
                SqlCommand cmd = new SqlCommand(qry, newconnection);
                cmd.Parameters.AddWithValue("@username", Tbusername.Text);
                
                SqlDataReader sdr = cmd.ExecuteReader();
                if ((sdr.Read()) == true )
                {
                    Label5.Visible = true;
                    Label5.Text = "Stop Here UserName notavailable";
                    Label5.ForeColor = System.Drawing.Color.Red;
                    
                }
                else
                {
                    Label5.Text = "UserName Available";
                    Label5.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                checkusername.Visible = false;
            }

        }
    }
}