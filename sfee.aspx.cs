using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sfee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rollno = (string)Session["username"];
        Label3.Text = "Roll no : " + rollno;
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string errorMessage = "PRINTED ";
        string script = "alert('" + errorMessage + "');";
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
    }
}