using Microsoft.SqlServer.Server;
using System;
using System.Activities.Expressions;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Configuration;
using System.Reflection.Emit;
using System.Security;
using System.ServiceModel.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f1screen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CheckBoxList1.Visible = false;
        }
        if (!IsPostBack)
        {
            isButtonsVisible = false;
        }

        if (!IsPostBack)
        {
            Button6.Visible = false;
            Button7.Visible = false;
            Button8.Visible = false;
            Button9.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBoxList1.Visible)
        {
            try
            {
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        string courseid = item.Value;
                        string coursename = item.Text;
                        int credithour = 3;
                        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("INSERT INTO OfferCourse (courseid, coursename, credithour) VALUES (@courseid, @coursename, @credithour)", conn);
                        cmd.Parameters.AddWithValue("@courseid", courseid);
                        cmd.Parameters.AddWithValue("@coursename", coursename);
                        cmd.Parameters.AddWithValue("@credithour", credithour);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    
                }
                CheckBoxList1.Visible = false;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('SELECTED course is already Entered');</script>");
              
            }
        }
        else
        {
            CheckBoxList1.Visible = true;
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9CPU568;Initial Catalog=flex;Integrated Security=True");
            conn.Open();
            string query = "SELECT * FROM Course ";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader res = cm.ExecuteReader();
            CheckBoxList1.Items.Clear();
            while (res.Read())
            {
                ListItem item = new ListItem(res["coursename"].ToString(), res["courseid"].ToString());
                CheckBoxList1.Items.Add(item);
            }
            res.Close();
            cm.Dispose();
            conn.Close();

         
        }
      
    }
  
    private bool isButtonsVisible = false;




    bool buttonsVisible = false;


    protected void Button2_Click(object sender, EventArgs e)
    {
        buttonsVisible = !buttonsVisible;

        if (buttonsVisible)
        {
            Button6.Visible = true;
            Button7.Visible = true;
            Button8.Visible = true;
            Button9.Visible = true;
        }
        else
        {
            Button6.Visible = false;
            Button7.Visible = false;
            Button8.Visible = false;
            Button9.Visible = false;
        }
    }




    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Course_offer.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

   



        protected void Button6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ADD_STUDENT.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete_stu.aspx");  
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update_Stu.aspx");
    }
    protected void Button9_Click1(object sender, EventArgs e)
    {
        Response.Redirect("View_Students.aspx");
    }



    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Generate_reports.aspx");
    }
}
