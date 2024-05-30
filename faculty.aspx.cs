using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

public partial class faculty : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["courseid"] != null)
        {
            string courseid = Request.QueryString["courseid"].ToString();
            // display the buttons for course with courseid
            // You can write your code to display the buttons here
        }
    }



  


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // Get the course ID from the data item
            string courseId = ((DataRowView)e.Row.DataItem)["fksectcourseid"].ToString();

            // Create a hyperlink control for the first cell
            HyperLink hypLnk = new HyperLink();
            hypLnk.Text = e.Row.Cells[1].Text + " (" + courseId + ")";
            hypLnk.NavigateUrl = "faculty_function.aspx?courseid=" + courseId;
            hypLnk.Target = "_blank";

            // Replace the first cell's text with the hyperlink control
            e.Row.Cells[0].Controls.Clear();
            e.Row.Cells[0].Controls.Add(hypLnk);

        }
    }



    protected void Button7_Click(object sender, EventArgs e)
    {
        string facultyid = TextBox1.Text;

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        string query = "SELECT  fac_sectable.fksectcourseid,fac_sectable.secttionid, course.coursename " +
                "FROM fac_sectable " +
                "INNER JOIN course ON fac_sectable.fksectcourseid = course.courseid " +
                "WHERE fac_sectable.factkstdid = @facultyid";

        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@facultyid", facultyid);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        // Bind the DataTable to the GridView
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }




    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}