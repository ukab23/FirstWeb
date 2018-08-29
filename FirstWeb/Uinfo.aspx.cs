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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    string script = "alert(\"Registration Successful..!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    String user = Session["username"].ToString();
                    int id = (int)Session["UserId"];
                    SqlConnection newconnection;

                    newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
                    newconnection.Open();
                    string qry = "select * from [user] where ID='" + id + "'";
                    SqlCommand cmd = new SqlCommand(qry, newconnection);
                    cmd.Parameters.AddWithValue("@ID", id);

                    SqlDataReader sdr = cmd.ExecuteReader();
                    if ((sdr.Read()) == true)
                    {
                        Tbname.Text = sdr["Name"].ToString();
                        Ddlgen.SelectedValue = sdr["Gender"].ToString();
                        Tbage.Text = sdr["Age"].ToString();
                        Tbnumber.Text = sdr["ContactNumber"].ToString();
                        Tbnumber.ReadOnly = true;
                        Tbemailid.Text = sdr["EmailID"].ToString();
                        Tbaddress.Text = sdr["Address"].ToString();
                        Button1.Visible = false;
                        Button2.Visible = true;
                    }
                    else
                    {
                        Button1.Visible = true;
                        Button2.Visible = false;
                    }

                }
                else
                {
                    string script = "alert(\"Login Failed..!\");";
                    Response.Redirect("Login.aspx");
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = (int)Session["UserID"];
            SqlConnection newconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
            newconnection.Open();
            string str = "insert into [user](ID,Name,Gender,Age,ContactNumber,EmailId,Address) values(@ID,@Name,@Gender,@Age,@contactnumber,@EmailId,@Address)";
            SqlCommand cmd = new SqlCommand(str, newconnection);
            cmd.Parameters.AddWithValue("@ID", id);
            cmd.Parameters.AddWithValue("@Name", Tbname.Text);
            cmd.Parameters.AddWithValue("@Gender", Ddlgen.Text);
            cmd.Parameters.AddWithValue("@Age", Tbage.Text);
            cmd.Parameters.AddWithValue("@contactnumber", Tbnumber.Text);
            cmd.Parameters.AddWithValue("@EmailId", Tbemailid.Text);
            cmd.Parameters.AddWithValue("@Address", Tbaddress.Text);
            cmd.ExecuteNonQuery();
            newconnection.Close();
            Response.Redirect("ProfileUser.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = (int)Session["UserID"];
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebsiteConnectionString"].ConnectionString);
             string sql = "UPDATE [user] Set Name = @Name,Gender = @gender,Age = @age,EmailID = @emailid,Address = @address where ID=@ID";
            //string sql = "UPDATE [user] Set Age = " + Convert.ToInt32(Tbage.Text) + " where ID="+id;

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.Parameters.AddWithValue("@Name", Tbname.Text);
                cmd.Parameters.AddWithValue("@gender", Ddlgen.Text);
                cmd.Parameters.AddWithValue("@age", Tbage.Text);
                cmd.Parameters.AddWithValue("@emailid", Tbemailid.Text);
                cmd.Parameters.AddWithValue("@address", Tbaddress.Text);

                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Update Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
                Response.Redirect("ProfileUser.aspx");
            }

        }
    }
}