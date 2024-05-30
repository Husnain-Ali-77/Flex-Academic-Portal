using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class s1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string un = TextBox1.Text;
        Session["username"] = un;
        Response.Redirect("shome.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

}