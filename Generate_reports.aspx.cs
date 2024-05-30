using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Generate_reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOfferedCourseReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "SELECT * FROM course WHERE courseid IN (SELECT matchcourseid FROM matchcourse)";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                connection.Open();

                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    if (GridView1.Visible)
                    {
                        GridView1.Visible = false;
                    }
                    else
                    {
                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                        GridView1.Visible = true;
                    }
                }
            }
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnStudentSectionReport_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "SELECT s.stusection, " +
                       "STRING_AGG(CONCAT(s.stdfnam, ' ', s.stdlnam, ' (', s.stdid, ')'), ', ') AS students " +
                       "FROM student s " +
                       "GROUP BY s.stusection";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                connection.Open();

                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    if (GridView2.Visible)
                    {
                        GridView2.Visible = false;
                    }
                    else
                    {
                        GridView2.DataSource = dataTable;
                        GridView2.DataBind();
                        GridView2.Visible = true;
                    }
                }
            }
        }
    }
    protected void btnCourseAllocationReport_Click(object sender, EventArgs e)
    {
        string query = "SELECT c.courseid, c.coursename, c.credithour, s.secttionid, f.facname "
                     + "FROM fac_sectable s "
                     + "JOIN course c ON s.fksectcourseid = c.courseid "
                     + "JOIN unifaculty f ON s.factkstdid = f.facid "
                     + "WHERE s.fksectcourseid = @courseId "
                     + "ORDER BY s.secttionid";
        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            DataTable dataTable = new DataTable();
            connection.Open();
            foreach (string courseId in GetCourses())
            {
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@courseId", courseId);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    DataTable courseTable = new DataTable();
                    courseTable.Load(reader);
                    dataTable.Merge(courseTable);
                }
            }
            GridView3.DataKeyNames = new string[] { "courseid" }; // set the primary key of the data table
            if (GridView3.Visible )
            {
                GridView3.Visible = false;
            }
            else
            {
                GridView3.DataSource = dataTable;
                GridView3.DataBind();
                GridView3.Visible = true;
            }
        }
    }

    private List<string> GetCourses()
    {
        // Construct the SQL query to retrieve the course IDs
        string query = "SELECT courseid FROM course";

        // Set up the database connection and command
        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            // Create a list to hold the course IDs
            List<string> courseIds = new List<string>();

            // Open the database connection and retrieve the course IDs
            connection.Open();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                // Loop through the Rows collection to get each DataRow
                while (reader.Read())
                {
                    // Get the course ID from the current row and add it to the list
                    string courseId = reader.GetString(0);
                    courseIds.Add(courseId);
                }
            }

            return courseIds;
        }
    }


}
