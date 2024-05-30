using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;


public partial class ADD_STUDENT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string stdid = TextBox2.Text;
        string stdfnam = TextBox3.Text;
        string stdlnam = TextBox4.Text;
        string stdphonum = TextBox5.Text;
        string stdgender = Request.Form["gender"];
        string stddob = TextBox6.Text;
        string stddegreedepart = TextBox7.Text;
        string stusection = TextBox8.Text;

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        string query = "INSERT INTO student(stdid, stdfnam, stdlnam, stdphonum, stdgender, stddob, stddegreedepart, stusection) " +
                       "VALUES('" + stdid + "', '" + stdfnam + "', '" + stdlnam + "', '" + stdphonum + "', '" + stdgender + "', " +
                       "'" + stddob + "', '" + stddegreedepart + "', '" + stusection + "')";
        SqlCommand cmd = new SqlCommand(query, conn);
        try
        {
            int rowsAffected = cmd.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                Response.Write("A new student has been inserted in the database.");
            }
            else
            {
                Response.Write("No rows were affected by the query.");
            }
        }
        catch (SqlException ex)
        {
            if (ex.Number == 2627) 
            {
                Response.Write("Duplicate data cannot be inserted in the database.");
            }
            else
            {
                Response.Write("An error occurred: " + ex.Message);
            }
        }
        cmd.Dispose();
        conn.Close();
    }


    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {

    }

}
