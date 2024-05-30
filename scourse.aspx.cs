using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class scourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rollno = (string)Session["username"];
      //  Label3.Text = rollno;
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
        Response.Redirect("sfee.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

        string rollno = (string)Session["username"];

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES  (@fkstdid, @fkcourseid)";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@fkstdid", rollno);
                command.Parameters.AddWithValue("@fkcourseid", "CS10101");
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    string errorMessage = " registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    string errorMessage = "not registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
            }
            connection.Close();
        }

    }



    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        
            string rollno = (string)Session["username"];

            string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
            string query = "INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES  (@fkstdid, @fkcourseid)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@fkstdid", rollno);
                    command.Parameters.AddWithValue("@fkcourseid", "MATH101");
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        string errorMessage = " registered ";
                        string script = "alert('" + errorMessage + "');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    }
                    else
                    {
                        string errorMessage = "not registered ";
                        string script = "alert('" + errorMessage + "');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    }
                }
                connection.Close();
            }
        
    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {

        string rollno = (string)Session["username"];

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES  (@fkstdid, @fkcourseid)";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@fkstdid", rollno);
                command.Parameters.AddWithValue("@fkcourseid", "PHY10101");
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    string errorMessage = " registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    string errorMessage = "not registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
            }
            connection.Close();
        }

    }

    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {

        string rollno = (string)Session["username"];

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES  (@fkstdid, @fkcourseid)";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@fkstdid", rollno);
                command.Parameters.AddWithValue("@fkcourseid", "ENG10101");
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    string errorMessage = " registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    string errorMessage = "not registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
            }
            connection.Close();
        }

    }

    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {

        string rollno = (string)Session["username"];

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES  (@fkstdid, @fkcourseid)";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@fkstdid", rollno);
                command.Parameters.AddWithValue("@fkcourseid", "HIS10101");
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    string errorMessage = " registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    string errorMessage = "not registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
            }
            connection.Close();
        }

    }

    protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
    {

        string rollno = (string)Session["username"];

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES  (@fkstdid, @fkcourseid)";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@fkstdid", rollno);
                command.Parameters.AddWithValue("@fkcourseid", "CS10201");
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    string errorMessage = " registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    string errorMessage = "not registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
            }
            connection.Close();
        }

    }

    protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
    {

        string rollno = (string)Session["username"];

        string connectionString = "Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True";
        string query = "INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES  (@fkstdid, @fkcourseid)";

      

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@fkstdid", rollno);
                command.Parameters.AddWithValue("@fkcourseid", "ENG10201");
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    string errorMessage = " registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    string errorMessage = "not registered ";
                    string script = "alert('" + errorMessage + "');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
            }
            connection.Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string errorMessage = "ALL COURSES Registered ";
        string script = "alert('" + errorMessage + "');";
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
    }
}