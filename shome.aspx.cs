using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rollno = (string)Session["username"];
        Label17.Text = rollno;

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;

        string pass = rollno;
        string query = "SELECT stusection FROM student WHERE stdid = '" + pass + "'";
        string query1 = "SELECT stddegreedepart FROM student WHERE stdid = '" + pass + "'";
        string query2 = "SELECT stdfnam FROM student WHERE stdid = '" + pass + "'";
        string query3 = "SELECT stdlnam FROM student WHERE stdid = '" + pass + "'";
        string query4 = "SELECT stdgender FROM student WHERE stdid = '" + pass + "'";
        string query5 = "SELECT stdphonum FROM student WHERE stdid = '" + pass + "'";


        cm = new SqlCommand(query, conn);
        SqlDataReader res = cm.ExecuteReader();
        if (res.Read()) 
        {
            string sec = res.GetString(0);
        }
        res.Close();

        cm = new SqlCommand(query1, conn);
        SqlDataReader res1 = cm.ExecuteReader();
        if (res1.Read())
        {
            string sec = res1.GetString(0); 
            Label8.Text = sec;
        }
        res1.Close();

        cm = new SqlCommand(query2, conn);
        SqlDataReader res2 = cm.ExecuteReader();
        if (res2.Read()) 
        {
            string sec = res2.GetString(0); 
            Label19.Text = sec;
        }
        res2.Close();

        cm = new SqlCommand(query3, conn);
        SqlDataReader res3 = cm.ExecuteReader();
        if (res3.Read()) 
        {
            string sec = res3.GetString(0); 
            Label20.Text = sec;
        }
        res3.Close();

        cm = new SqlCommand(query4, conn);
        SqlDataReader res4 = cm.ExecuteReader();
        if (res4.Read()) 
        {
            string sec = res4.GetString(0);
            Label21.Text = sec;
        }
        res4.Close();

        cm = new SqlCommand(query5, conn);
        SqlDataReader res5 = cm.ExecuteReader();
        if (res5.Read()) 
        {
            string sec = res5.GetString(0); 
            Label22.Text = sec;
        }
        res5.Close();


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

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }

}