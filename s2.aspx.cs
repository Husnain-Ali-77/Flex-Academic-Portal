using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class s2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
        conn.Open();
        SqlCommand cm;
        SqlCommand cm1;
        string un = Tb1.Text;
        string pass = Tb2.Text;
        string role = DropDownList1.Text;
        bool c1 = false, c2 = false, c3 = false, c4 = false, bn = false, bA = true;
        for (int i = 0; i < pass.Length; i++)
        {
            char c = pass[i];
            if (c >= 32 && c <= 47)
            {
                c1 = true;
            }
            else if (c >= 58 && c <= 64)
            {
                c1 = true;
            }
            else if (c >= 91 && c <= 96)
            {
                c1 = true;
            }
            else if (c >= 123 && c <= 126)
            {
                c1 = true;
            }
            else if (c >= 48 && c <= 57)
            {
                bn = true;
            }
            else if (c >= 65 && c <= 90 || c >= 97 && c <= 122)
            {
                bA = true;
            }
        }
        if (pass.Length != 8)
        {
            // show error message to user
            errorMsg.Text = "Your Password should be of 8 characters";
        }
        else if (!bA || !c1 || !bn)
        {
            errorMsg.Text = "Please enter a strong password..";
        }
        else
        {
            string query1 = "SELECT * FROM Alogin WHERE username = '" + un + "' AND password1 = '" + pass + "'";
            cm1 = new SqlCommand(query1, conn);

            SqlDataReader res = cm1.ExecuteReader();
            if (res.HasRows)
            {
                errorMsg.Text = "Try another username or password";
                res.Close(); // close the SqlDataReader object
            }
            else
            {
                res.Close();
                // proceed with inserting the user's details into the database
                string query = "Insert into Alogin(username,password1,rolef) values ('" + un + "','" + pass + "','" + role + "')";
                cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();
                cm.Dispose();
                conn.Close();
                Response.Redirect("s2.aspx");
            }
        }

    }
}