using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            string User = Txtuser.Text.Trim();
            string Password = Txtupw.Text.Trim();
            string Query = "insert into users values('" + User + "','" + Password + "')";
            string Q = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(Q);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Lblmsg.ForeColor = Color.Tomato;
            Lblmsg.Text = "Data Insert Successfull";
            Session["ID"] = User;
            Response.Redirect("home.aspx");
        }
        catch (Exception ex)
        {
            Lblmsg.Text = ex.Message;
        }

    }
}