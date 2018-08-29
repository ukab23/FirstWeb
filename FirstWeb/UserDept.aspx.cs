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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] != null)
            {
                if (!Page.IsPostBack)
                {
                    refreshdata();
                }
            }
            else
            {
                string script = "alert(\"Login Failed..!\");";
                Response.Redirect("Login.aspx");
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }

        public void refreshdata() {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
            string str = "SELECT [user].ID, [user].Name, [user].EmailID, Department.Department FROM [user] INNER JOIN Department ON [user].DeptID = Department.DeptID";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection newconnection;
            newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
            newconnection.Open();
           
            string str = "UPDATE [user] Set [DeptID]= (select[DeptID] from[Department] where[Department] = @department) where [Name]=@name";
            SqlCommand cmd = new SqlCommand(str, newconnection);
            cmd.Parameters.AddWithValue("@name", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@department", DropDownList2.Text);
            cmd.ExecuteNonQuery();
            newconnection.Close();
            refreshdata();
            string script = "alert(\"Departments updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

        }

        
    }
}