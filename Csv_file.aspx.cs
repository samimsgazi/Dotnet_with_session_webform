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

public partial class Csv_file : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
           BindList();
    }
    private void BindList()
    {
        string Query = "Select * from Csv_file_upload";
        string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlDataAdapter da = new SqlDataAdapter(Query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
        con.Close();
    }
    protected void Btnsave_Click(object sender, EventArgs e)
    {
         string Imgdesc = Txtdesc.Text.Trim();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Pic\\" + FileUpload1.FileName));
            string Imgpath = "~\\Pic\\" + FileUpload1.FileName;
            try
            {
                string Query = "Insert into Csv_file_upload values('" + Imgpath + "','" + Imgdesc + "')";
                string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(Query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                BindList();
                Lblmsg.Text = string.Empty;
            }
            catch (Exception ex)
            {
                Lblmsg.ForeColor = Color.Red;
                Lblmsg.Text = ex.Message;
            }
        }
        else
        {
            Lblmsg.ForeColor = Color.Red;
            Lblmsg.Text = "Choose File!!";
        }
    }
    
}