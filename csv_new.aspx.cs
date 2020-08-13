using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;  

public partial class csv_new : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnimport_Click(object sender, EventArgs e)
    {
        //Upload and save the file  
        string csvPath = Server.MapPath("~/Pic/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(csvPath);

        //Create a DataTable.  
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[5] { new DataColumn("Id", typeof(int)),  
        new DataColumn("Name", typeof(string)),  
        new DataColumn("Technology", typeof(string)),  
        new DataColumn("Company", typeof(string)),  
        new DataColumn("Country",typeof(string)) });

        //Read the contents of CSV file.  
        string csvData = File.ReadAllText(csvPath);

        //Execute a loop over the rows.  
        foreach (string row in csvData.Split('\n'))
        {
            if (!string.IsNullOrEmpty(row))
            {
                dt.Rows.Add();
                int i = 0;

                //Execute a loop over the columns.  
                foreach (string cell in row.Split(','))
                {
                    dt.Rows[dt.Rows.Count - 1][i] = cell;
                    i++;
                }
            }
        }
        //Bind the DataTable.  
        GridView1.DataSource = dt;
        GridView1.DataBind();  
    }
}