using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Assign_teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Populate the GridView with data from the section table
            using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"))
            {
                conn.Open();
                SqlCommand command = new SqlCommand("SELECT fkseccourseid, sectionid FROM section", conn);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }

            // Populate the CheckBoxList with data from the unifaculty table
            using (SqlConnection conn2 = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"))
            {
                conn2.Open();
                SqlCommand comman = new SqlCommand("SELECT facid, facname FROM unifaculty", conn2);
                SqlDataAdapter adapter1 = new SqlDataAdapter(comman);
                DataTable dataTable1 = new DataTable();
                adapter1.Fill(dataTable1);
                CheckBoxList1.DataSource = dataTable1;
                CheckBoxList1.DataTextField = "facname";
                CheckBoxList1.DataValueField = "facid";
                CheckBoxList1.DataBind();
            }
        }
    }

    protected void btnAssignFaculty_Click(object sender, EventArgs e)
    {
        int maxSectionCount = 3; // maximum number of sections that a faculty member can be assigned to
        int assignedSectionCount = 0; // count of sections to which the faculty member has been assigned

        using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True"))
        {
            conn.Open();

            bool facultyAssigned = false;

            // Get the first unassigned section of the first unassigned course
            string courseID = null;
            string sectionID = null;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    courseID = row.Cells[0].Text;
                    sectionID = row.Cells[1].Text;

                    string query = "SELECT COUNT(*) FROM fac_sectable WHERE fksectcourseid = @courseID AND secttionid = @sectionID";
                    SqlCommand command = new SqlCommand(query, conn);
                    command.Parameters.AddWithValue("@courseID", courseID);
                    command.Parameters.AddWithValue("@sectionID", sectionID);
                    int count = (int)command.ExecuteScalar();

                    if (count == 0)
                    {
                        break;
                    }
                    else
                    {
                        courseID = null;
                        sectionID = null;
                    }
                }
            }

            if (courseID != null && sectionID != null)
            {
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        string facultyID = item.Value;

                        // check if the faculty member has already been assigned to the maximum number of sections
                        string countQuery = "SELECT COUNT(*) FROM fac_sectable WHERE factkstdid = @facultyID";
                        SqlCommand countCommand = new SqlCommand(countQuery, conn);
                        countCommand.Parameters.AddWithValue("@facultyID", facultyID);
                        int count = (int)countCommand.ExecuteScalar();

                        if (count >= maxSectionCount)
                        {
                            Response.Write("Faculty member " + facultyID + " has already been assigned to " + maxSectionCount + " sections. Assignment to section " + sectionID + " of course " + courseID + " has been skipped.<br>");
                        }
                        else
                        {
                            string insertQuery = "INSERT INTO fac_sectable (factkstdid, fksectcourseid, secttionid) VALUES (@facultyID, @courseID, @sectionID)";
                            SqlCommand insertCommand = new SqlCommand(insertQuery, conn);
                            insertCommand.Parameters.AddWithValue("@facultyID", facultyID);
                            insertCommand.Parameters.AddWithValue("@courseID", courseID);
                            insertCommand.Parameters.AddWithValue("@sectionID", sectionID);
                            insertCommand.ExecuteNonQuery();
                            assignedSectionCount++;
                            Response.Write("Faculty member " + item.Text + " has been assigned to section " + sectionID + " of course " + courseID + ".<br>");
                            facultyAssigned = true;
                            break; // exit the loop after assigning the faculty to the section
                        }
                    }
                }
            }

            if (!facultyAssigned)
            {
                Response.Write("No faculty member selected for section " + sectionID + " of course " + courseID + ".<br>");
            }

            conn.Close();
        }
    }




    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
