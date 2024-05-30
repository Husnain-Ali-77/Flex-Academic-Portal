using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Update_stu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;
        string query = "UPDATE student SET stdfnam=@firstname,stdlnam=@lastname,stdphonum=@phonenumber,stdgender=@gender,stddob=@dateofbirth," +
            "stddegreedepart=@degreedepartment,stusection=@section WHERE stdid=@studentid";
        cm = new SqlCommand(query, conn);
        cm.Parameters.AddWithValue("@firstname", txtFirstName.Text.Trim());
        cm.Parameters.AddWithValue("@lastname", txtLastName.Text.Trim());
        cm.Parameters.AddWithValue("@phonenumber", txtPhoneNumber.Text.Trim());
        cm.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
        cm.Parameters.AddWithValue("@dateofbirth", txtDateOfBirth.Text.Trim());
        cm.Parameters.AddWithValue("@degreedepartment", txtDegreeDepartment.Text.Trim());
        cm.Parameters.AddWithValue("@section", txtSection.Text.Trim());

        cm.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script>alert('Student data updated successfully');</script>");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_stu.aspx");
    }

    protected void txtStudentID_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("f1screen.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;
        string studentId = txtStudentID.Text.Trim();
        string query = "SELECT * FROM student WHERE stdid=@studentid";
        cm = new SqlCommand(query, conn);
        cm.Parameters.AddWithValue("@studentid", studentId);

        SqlDataReader sdr = cm.ExecuteReader();
        if (sdr.Read())
        {
            txtFirstName.Text = sdr["stdfnam"].ToString();
            txtLastName.Text = sdr["stdlnam"].ToString();
            txtPhoneNumber.Text = sdr["stdphonum"].ToString();
            ddlGender.SelectedValue = sdr["stdgender"].ToString();
            txtDateOfBirth.Text = sdr["stddob"].ToString();
            txtDegreeDepartment.Text = sdr["stddegreedepart"].ToString();
            txtSection.Text = sdr["stusection"].ToString();
            btnUpdate.Visible = true;
        }
        else
        {
            Response.Write("<script>alert('Invalid Student ID');</script>");
        }

        conn.Close();
    }
}

