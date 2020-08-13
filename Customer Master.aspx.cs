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

public partial class Customer_Master : System.Web.UI.Page
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
        string Query = "Select * from Customer_master";
        string Q = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection(Q);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlDataAdapter da = new SqlDataAdapter(Query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();
    
        
}

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
           
        {
            
            string cnm = TxtCNM.Text.Trim();
            string caddr = TxtCADDR.Text.Trim();
            string city = TxtCCITY.Text.Trim();
            string mail = TxtCMAIL.Text.Trim();
            string ph = TxtCPHNO.Text.Trim();
            string pin = TxtCPIN.Text.Trim();
            string dist = TxtCDIST.Text.Trim();
            string registration = Txtregdt.Text.Trim();


            string Query = "insert into Customer_master values('" + cnm + "','" + caddr + "','" + city + "','" + mail + "','" + ph + "','" + pin + "','" + dist + "','" + registration + "')";
            string Q = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            SqlConnection con = new SqlConnection(Q);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Lblmsg.ForeColor = Color.Green;
            //Lblmsg.Text = "Data Insert Successfull";
            
            Response.Redirect("Customer_Master_Edit.aspx");
        }
        catch (Exception ex)
        {
            Lblmsg.Text = ex.Message;
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView2.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                Button Btnedit = (Button)vrow.FindControl("Btnedit");
                Button Btndel = (Button)vrow.FindControl("Btndel");
            }
        }
    }

    protected void Btndel_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView2.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                string Ide = GridView2.DataKeys[vrow.RowIndex].Value.ToString();
                string Query = "delete from Customer_master where id='" + Ide + "'";
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
  
    protected void Btnupdate_Click(object sender, EventArgs e)
    {
        string Nm = TxtCNM.Text.Trim();
        string Adr = TxtCADDR.Text.Trim();
        string City = TxtCCITY.Text.Trim();
        string Mail = TxtCMAIL.Text.Trim();
        string Ph = TxtCPHNO.Text.Trim();
        string Pin = TxtCPIN.Text.Trim();
        string Dist = TxtCDIST.Text.Trim();
        string Reg = Txtregdt.Text.Trim();
        foreach (GridViewRow vrow in GridView2.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                string Id = GridView2.DataKeys[vrow.RowIndex].Value.ToString();
                string Query = "update Customer_master set cust_name='" + Nm + "',cust_address='" + Adr + "',cust_city='" + City + "',cust_mail='" + Mail + "',cust_phno='" + Ph + "',cust_pincode='" + Pin + "',cust_dist='" + Dist + "',registration_dt='" + Reg + "' where id='" + Id + "'";
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


    protected void Btnedit_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow vrow in GridView2.Rows)
        {
            CheckBox checkbox1 = (CheckBox)vrow.FindControl("Checkbox1");
            if (checkbox1.Checked == true)
            {
                string Ide = GridView2.DataKeys[vrow.RowIndex].Value.ToString();
                string Query = "Select * from Customer_master where id='" + Ide + "'";
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

                    TxtCNM.Text = dt.Rows[0]["cust_name"].ToString();
                    TxtCADDR.Text = dt.Rows[0]["cust_address"].ToString();
                    TxtCCITY.Text= dt.Rows[0]["cust_city"].ToString();
                    TxtCMAIL.Text = dt.Rows[0]["cust_mail"].ToString();
                    TxtCPHNO.Text = dt.Rows[0]["cust_phno"].ToString();
                    TxtCPIN.Text = dt.Rows[0]["cust_pincode"].ToString();
                    TxtCDIST.Text = dt.Rows[0]["cust_dist"].ToString();
                    Txtregdt.Text = dt.Rows[0]["registration_dt"].ToString();
                    


                }
            }

        }
        

    }
}