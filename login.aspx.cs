using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm1;
        string un = Tb1.Text;
        string pass = Tb2.Text;        
        string query1 = "SELECT * FROM Alogin WHERE username = '" + un + "' AND password1 = '" + pass + "'";
            cm1 = new SqlCommand(query1, conn);

            SqlDataReader res = cm1.ExecuteReader();
            if (!res.HasRows)
            {
                errorMsg.Text = "Invalid Username or password";
                res.Close(); // close the SqlDataReader object
            }
            else
        {
            string query = "SELECT rolef FROM Alogin WHERE username = '" + un + "' AND password1 = '" + pass + "'";
            SqlCommand cm;
            cm = new SqlCommand(query, conn);
            res.Close();
            SqlDataReader rs = cm.ExecuteReader();
            if (rs.Read())
            {
                string role = rs.GetString(0);
                // Display the value in a label or other output control
                if(role == "Academic Officer")
                {
                    Response.Redirect("f1screen.aspx");
                }
                else if(role == "Student")
                {
                    Response.Redirect("s1.aspx");
                }
                else if (role == "Faculty")
                {
                    Response.Redirect("faculty.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                rs.Close();
            }

            }
    }
}