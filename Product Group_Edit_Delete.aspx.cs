using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Product_Group_Edit_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        if (!Page.IsPostBack)
        {
            Bind();
        }
    }
    private void Bind()
    {
        string Query = "Select * from prod_group1";
        string Q = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection(Q);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlDataAdapter da = new SqlDataAdapter(Query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                Button Btnedit = (Button)vrow.FindControl("Btnedit");
                Button Btndel = (Button)vrow.FindControl("Btndel");
            }
        }
    }
    protected void Btnedit_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                string Ide = GridView1.DataKeys[vrow.RowIndex].Value.ToString();
                string Query = "Select * from prod_group1 where prgroup_id='" + Ide + "'";
                string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataAdapter da = new SqlDataAdapter(Query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Panel1.Visible = true;
                    TxtPGN0.Text = dt.Rows[0]["prod_group_name"].ToString();
                }
            }

        }
    }
    protected void Btndel_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                string Ide = GridView1.DataKeys[vrow.RowIndex].Value.ToString();
                string Query = "delete from prod_group1 where prgroup_id='" + Ide + "'";
                string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(Query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        Bind();
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        
        string prg =TxtPGN0.Text.Trim();
       
        foreach (GridViewRow vrow in GridView1.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                string Id = GridView1.DataKeys[vrow.RowIndex].Value.ToString();
                string Query = "update prod_group1 set prod_group_name='" + prg + "' where prgroup_id='" + Id + "'";
                string str = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(Query, con);
                cmd.ExecuteNonQuery();
                con.Close();
				Response.Redirect("Product_Group.aspx");
            }
        }
        Bind();
    }
    }
