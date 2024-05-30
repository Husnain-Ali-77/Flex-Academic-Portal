using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sattend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;

        string pass = "CS10101";
        string query = "SELECT courseid FROM course WHERE  courseid = '" + pass + "'";

        cm = new SqlCommand(query, conn);
        SqlDataReader res = cm.ExecuteReader();
        if (res.Read()) // Read the first row of data
        {
            string sec = res.GetString(0);
            Label3.Text = pass + " 100% ";
        }
        res.Close();
        pass = "MATH101";
        query = "SELECT courseid FROM course WHERE  courseid = '" + pass + "'";
        cm = new SqlCommand(query, conn);
        SqlDataReader res1 = cm.ExecuteReader();
        if (res1.Read()) // Read the first row of data
        {
            string sec = res1.GetString(0);
            Label4.Text = pass + " 100% ";
        }
        res1.Close();
        pass = "PHY10101";
        query = "SELECT courseid FROM course WHERE  courseid = '" + pass + "'";
        cm = new SqlCommand(query, conn);
        SqlDataReader res2 = cm.ExecuteReader();
        if (res2.Read()) // Read the first row of data
        {
            string sec2 = res2.GetString(0);
            Label5.Text = pass + " 90% ";
        }
        res2.Close();
        pass = " ENG10101";
        query = "SELECT courseid FROM course WHERE  courseid = '" + pass + "'";
        cm = new SqlCommand(query, conn);
        SqlDataReader res3 = cm.ExecuteReader();
        if (res3.Read()) // Read the first row of data
        {
            string sec3 = res3.GetString(0);
            Label7.Text = pass + " 80% ";
        }
        res3.Close();
        pass = "HIS10101";
        query = "SELECT courseid FROM course WHERE  courseid = '" + pass + "'";
        cm = new SqlCommand(query, conn);
        SqlDataReader res4 = cm.ExecuteReader();
        if (res4.Read()) // Read the first row of data
        {
            string sec4 = res4.GetString(0);
            Label7.Text = pass + " 70% ";
        }
        res4.Close();
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
        Response.Redirect("sfee.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }
}