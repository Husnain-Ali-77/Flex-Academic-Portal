using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Course_offer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";

            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // Find courses with more than 3 students
                    string query = "SELECT fkcourseid, COUNT(*) as TotalStudents FROM studentcourse GROUP BY fkcourseid HAVING COUNT(*) > 3";
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                    {
                        adapter.Fill(dt);
                    }

                    foreach (DataRow row in dt.Rows)
                    {
                        string courseId = row["fkcourseid"].ToString();
                        int totalStudents = Convert.ToInt32(row["TotalStudents"]);
                        int totalSections = (int)Math.Ceiling((double)totalStudents / 3);

                        // Insert course ID into matchcourse table
                        string matchCourseId = courseId;
                        string insertMatchQuery = "INSERT INTO matchcourse(matchcourseid) VALUES (@matchCourseId)";
                        using (SqlCommand insertMatchCmd = new SqlCommand(insertMatchQuery, conn))
                        {
                            insertMatchCmd.Parameters.AddWithValue("@matchCourseId", matchCourseId);
                            insertMatchCmd.ExecuteNonQuery();
                        }

                        // Insert sections into section table
                        for (int i = 1; i <= totalSections; i++)
                        {
                            string sectionName = Convert.ToChar(64 + i).ToString();

                            string insertSectionQuery = "INSERT INTO section(fkseccourseid, sectionid) VALUES (@courseId, @sectionName)";
                            using (SqlCommand insertSectionCmd = new SqlCommand(insertSectionQuery, conn))
                            {
                                insertSectionCmd.Parameters.AddWithValue("@courseId", courseId);
                                insertSectionCmd.Parameters.AddWithValue("@sectionName", sectionName);
                                insertSectionCmd.ExecuteNonQuery();
                            }
                        }
                    }

                    // Retrieve data for GridView2
                    string matchcourseQuery = "SELECT matchcourseid FROM matchcourse";
                    string courseQuery = "SELECT courseid, coursename, credithour FROM course WHERE courseid = @CourseID";
                    using (SqlCommand matchcourseCommand = new SqlCommand(matchcourseQuery, conn))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(matchcourseCommand))
                        {
                            DataTable matchcourseTable = new DataTable();
                            adapter.Fill(matchcourseTable);
                            DataTable courseTable = new DataTable();
                            courseTable.Columns.Add("CourseID");
                            courseTable.Columns.Add("CourseName");
                            courseTable.Columns.Add("CreditHour");
                            foreach (DataRow matchcourseRow in matchcourseTable.Rows)
                            {
                                string courseID = matchcourseRow["matchcourseid"].ToString();
                                using (SqlCommand courseCommand = new SqlCommand(courseQuery, conn))
                                {
                                    courseCommand.Parameters.AddWithValue("@CourseID", courseID);
                                    using (SqlDataReader courseReader = courseCommand.ExecuteReader())
                                    {
                                        if (courseReader.Read())
                                        {
                                            string courseName = courseReader.GetString(1);
                                            int creditHour = courseReader.GetInt32(2);

                                            courseTable.Rows.Add(courseID, courseName, creditHour);
                                        }
                                    }
                                }
                            }
                            GridView2.DataSource = courseTable;
                            GridView2.DataBind();
                        }
                    }
                }
                catch (SqlException ex)
                {
                    if (ex.Number == 2627)
                    {
                        Response.Write("<script>alert('Duplicate data cannot be inserted in the database.')</script>");
                    }
                    else
                    {
                        Response.Write("An error occurred: " + ex.Message);
                    }
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }
      

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

  
    
}