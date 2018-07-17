using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhiPortal_Portal : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersDB"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select F_Name from UserInformation where Username =@Username", con);
        object obj = Session["Username"];
        string username = Convert.ToString(obj);
        cmd.Parameters.Add(new SqlParameter("Username", username));
        SqlDataReader reader = cmd.ExecuteReader();

        reader.Read();
        customWelcome.Text = "Welcome "+reader["F_Name"].ToString();
    }
}
