using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class faculty_function : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            ButtonSubmit.Visible = false;

        }


    }

    protected void Button7_Click1(object sender, EventArgs e)
    {
        string courseId = Request.QueryString["courseid"];
        if (string.IsNullOrEmpty(courseId))
        {
            Response.Write("<script>alert('Error: Course ID not found in query string.')</script>");
            return;
        }

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"; // replace with your connection string
        foreach (GridViewRow row in GridView2.Rows)
        {
            TextBox txtAttendance = (TextBox)row.Cells[2].FindControl("txtAttendance");
            if (txtAttendance == null)
            {
                Response.Write("<script>alert('Error: Attendance textbox not found for student " + row.Cells[1].Text + ".')</script>");
                return;
            }

            string attendance = txtAttendance.Text.Trim();

            if (attendance != "P")
            {
                continue; // skip the current iteration of the loop
            }
            string studentId = row.Cells[0].Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("INSERT INTO feedbackandattendancestudentcourse (fakstdid, fakcourseid, attendance) VALUES (@studentId, @courseId, @attendance)", connection);
                command.Parameters.AddWithValue("@studentId", studentId);
                command.Parameters.AddWithValue("@courseId", courseId);
                command.Parameters.AddWithValue("@attendance", attendance);

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
                    return;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        Response.Write("<script>alert('Attendance marked successfully.')</script>");
    }


    bool buttonsVisible = false;
    protected void Button5_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Evaluation Name");
        dt.Columns.Add("Weightage (%)");

        dt.Rows.Add("Assignment", "");
        dt.Rows.Add("Quizzes", "");
        dt.Rows.Add("Sessional", "");
        dt.Rows.Add("Project", "");
        dt.Rows.Add("Final", "");

        GridView1.DataSource = dt;
        GridView1.DataBind();
        buttonsVisible = !buttonsVisible;

        if (buttonsVisible)
        {
            ButtonSubmit.Visible = true;

        }
        else
        {
            ButtonSubmit.Visible = false;

        }
    }

    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        int assignmentWeightage = Convert.ToInt32(((TextBox)GridView1.Rows[0].Cells[1].FindControl("TextBoxWeightage")).Text);
        int quizzesWeightage = Convert.ToInt32((GridView1.Rows[1].FindControl("TextBoxWeightage") as TextBox).Text);
        int sessionalWeightage = Convert.ToInt32((GridView1.Rows[2].FindControl("TextBoxWeightage") as TextBox).Text);
        int projectWeightage = Convert.ToInt32((GridView1.Rows[3].FindControl("TextBoxWeightage") as TextBox).Text);
        int finalWeightage = Convert.ToInt32((GridView1.Rows[4].FindControl("TextBoxWeightage") as TextBox).Text);

        string courseId = "";
        if (Request.QueryString["courseid"] != null)
        {
            courseId = Request.QueryString["courseid"].ToString();
        }
        else
        {
            Response.Write("<script>alert('Error: Course ID not found in query string.')</script>");
            return;
        }

        int totalWeightage = assignmentWeightage + quizzesWeightage + sessionalWeightage + projectWeightage + finalWeightage;

        if (totalWeightage != 100)
        {
            Response.Write("<script>alert('Error: Total weightage must be 100%.')</script>");
            return;
        }
        else if (totalWeightage == 100)
        {
            Response.Write("<script>alert('Error: Total weightage is 100%.')</script>");

        }

        using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"))
        {
            conn.Open();

            string query = "INSERT INTO marksdistribution(markdisid, Assignment_weightage, quizes_weightage, sessional_weightage, project_weightage, final_weightage, marksseccourseid) VALUES (@markdisid, @assignmentWeightage, @quizzesWeightage, @sessionalWeightage, @projectWeightage, @finalWeightage, @courseId)";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@markdisid", 0);
                cmd.Parameters.AddWithValue("@assignmentWeightage", assignmentWeightage);
                cmd.Parameters.AddWithValue("@quizzesWeightage", quizzesWeightage);
                cmd.Parameters.AddWithValue("@sessionalWeightage", sessionalWeightage);
                cmd.Parameters.AddWithValue("@projectWeightage", projectWeightage);
                cmd.Parameters.AddWithValue("@finalWeightage", finalWeightage);
                cmd.Parameters.AddWithValue("@courseId", courseId);

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Values inserted successfully!')</script>");
            }
        }
    }




    protected void Button6_Click(object sender, EventArgs e)
    {
        string courseId = Request.QueryString["courseid"];
        if (string.IsNullOrEmpty(courseId))
        {
            Response.Write("<script>alert('Error: Course ID not found in query string.')</script>");
            return;
        }

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"; // replace with your connection string
        DataTable dataTable = new DataTable();
        dataTable.Columns.Add("Student ID", typeof(string));
        dataTable.Columns.Add("Name", typeof(string));
        dataTable.Columns.Add("Total Marks", typeof(int));
        dataTable.Columns.Add("Obtained Marks", typeof(int));

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = @"SELECT s.stdid, s.stdfnam + ' ' + s.stdlnam as stdname 
                         FROM studentcourse sc 
                         INNER JOIN student s ON sc.fkstdid = s.stdid 
                         WHERE sc.fkcourseid = @courseid";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@courseId", courseId);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    string studentId = reader.GetString(0);
                    string name = reader.GetString(1);
                    DataRow row = dataTable.NewRow();
                    row[0] = studentId;
                    row[1] = name;
                    row[2] = 100;
                    row[3] = DBNull.Value;
                    dataTable.Rows.Add(row);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
                return;
            }
            finally
            {
                connection.Close();
            }
        }

        GridView3.DataSource = dataTable;
        GridView3.DataBind();
    }

    protected void Button8_Click1(object sender, EventArgs e)
    {
        string courseId = Request.QueryString["courseid"];
        if (string.IsNullOrEmpty(courseId))
        {
            Response.Write("<script>alert('Error: Course ID not found in query string.')</script>");
            return;
        }

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"; // replace with your connection string

        foreach (GridViewRow row in GridView1.Rows)
        {
            TextBox txtObtainMarks = (TextBox)row.Cells[3].FindControl("txtObtainMarks");
            if (txtObtainMarks == null)
            {
                Response.Write("<script>alert('Error: Obtain Marks textbox not found for student " + row.Cells[1].Text + ".')</script>");
                return;
            }

            int obtainedMarks;
            if (!int.TryParse(txtObtainMarks.Text.Trim(), out obtainedMarks))
            {
                Response.Write("<script>alert('Error: Invalid obtained marks for student " + row.Cells[1].Text + ".')</script>");
                return;
            }

            string studentId = row.Cells[0].Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("INSERT INTO marks (courseidmarks, totalmarks, obtainmarks) VALUES (@courseId, @totalMarks, @obtainedMarks)", connection);
                command.Parameters.AddWithValue("@courseId", courseId);
                command.Parameters.AddWithValue("@totalMarks", 100);
                command.Parameters.AddWithValue("@obtainedMarks", obtainedMarks);

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
                    return;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        Response.Write("<script>alert('Marks    successfully.')</script>");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }




    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        // Retrieve the course ID from the previous page
        string courseId = Request.QueryString["courseid"];
        if (string.IsNullOrEmpty(courseId))
        {
            Response.Write("<script>alert('Error: Course ID not found in query string.')</script>");
            return;
        }

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"; // replace with your connection string

        // Retrieve the students registered for the course
        string query = @"SELECT s.stdid, s.stdfnam + ' ' + s.stdlnam as stdname 
                         FROM studentcourse sc 
                         INNER JOIN student s ON sc.fkstdid = s.stdid 
                         WHERE sc.fkcourseid = @courseid";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@courseid", courseId);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);

            // Add the attendance column
            dataTable.Columns.Add("Attendance", typeof(string)).SetOrdinal(2);

            // Bind the data to the GridView
            GridView2.DataSource = dataTable;
            GridView2.DataBind();

            // Add the attendance textboxes for each student
            foreach (GridViewRow row in GridView2.Rows)
            {
                TextBox txtAttendance = new TextBox();
                txtAttendance.ID = "txtAttendance_" + row.Cells[0].Text; // set the ID of the textbox to include the student ID
                txtAttendance.Text = ""; // set the default value of the textbox to empty string
                txtAttendance.MaxLength = 1; // set the maximum length of the textbox to 1 character
                row.Cells[2].Controls.Add(txtAttendance); // add the textbox to the attendance column
            }

        }
    }
}