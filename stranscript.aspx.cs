using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stranscript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
            conn.Open();
            SqlCommand cm;
            string query = "SELECT * FROM Course ";
            cm = new SqlCommand(query, conn);

            SqlDataReader res = cm.ExecuteReader();
           // GridView1.DataSource = res; // set grid data source to SqlDataReader object
            GridView1.DataBind(); // bind data to grid

            res.Close();
            cm.Dispose();
            conn.Close();

        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("shome.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("scourse.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("sattend.aspx");
    }


    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("stranscript.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("sfee.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;
        // Get the values of the selected row
        GridViewRow row = GridView1.Rows[index];
        string courseID = row.Cells[0].Text;
        string courseName = row.Cells[1].Text;
        string credits = row.Cells[2].Text;

        // Do something with the selected row data, such as display it in a label
        
       
    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}