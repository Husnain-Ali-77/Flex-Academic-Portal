using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete_stu : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT stdid, stdfnam, stdlnam, stdphonum, stdgender, stddob, stddegreedepart, stusection FROM student WHERE stdid = @stdid";
            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@stdid", TextBox1.Text.Trim());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            gvStudentInfo.DataSource = dt;
            gvStudentInfo.DataBind();

            conn.Close();
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnRetrieve_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();

        SqlCommand cm;
        string studentId = TextBox1.Text.Trim();
        string query = "SELECT stdid, stdfnam, stdlnam, stdphonum, stdgender, stddob, stddegreedepart, stusection FROM student WHERE stdid = @stdid";
        cm = new SqlCommand(query, conn);
        cm.Parameters.AddWithValue("@stdid", studentId);

        SqlDataReader res = cm.ExecuteReader();

        if (!res.HasRows)
        {
            Response.Write("<script>alert('Invalid Student ID');</script>");
        }
        else
        {
            gvStudentInfo.DataSource = res;
            gvStudentInfo.DataBind();
            btnDelete.Visible = true;
        }

        cm.Dispose();
        conn.Close();
    }



    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();

        SqlCommand cm;
        string studentId = TextBox1.Text.Trim();
        string query = "DELETE FROM student WHERE stdid = @stdid";
        cm = new SqlCommand(query, conn);
        cm.Parameters.AddWithValue("@stdid", studentId);

        cm.ExecuteNonQuery();

        cm.Dispose();
        conn.Close();
        Response.Write("<script>alert('Respective Student Id has been removed');</script>");
    }



    protected void gvStudentInfo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvStudentInfo_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("f1screen.aspx");
    }
}