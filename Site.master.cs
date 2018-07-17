using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersDB"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserInformation where Username =@Username and Password=@Password", con);
        cmd.Parameters.AddWithValue("@Username", userTextBox.Text);
        cmd.Parameters.AddWithValue("@Password", passTextBox.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)

        {

            Response.Redirect("~/PhiPortal/Home.aspx");

        }

        else

        {

            lblError.Visible = true;
            lblError.Style["color"] = "red";
            lblError.Text = "Invalid username or password.";
        }
    }
}
