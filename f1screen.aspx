<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f1screen.aspx.cs" Inherits="f1screen" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Assign_teacher.aspx");
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex | Acedemic User</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            margin-right: 2px;
        }
        .auto-style2 {
            width: 1279px;
        }
        body {
     background-color:darkgrey;
    font-family: Arial, sans-serif;
}
header {
    background-color: #006666;
    padding: 1px;
    text-align: center;
    color: #ffffff
}
footer {
    background-color: #006666;
    padding: 2px;
    text-align: center;
}

    footer p {
        color: #FFFFFF;
        margin: 0;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <header>
		<h1>Flex | Academic User</h1>
	</header>
  
   <main>
       <p class="auto-style2">
           <asp:Button ID="Button1" runat="server" BackColor=#006666 Text="Course Registration" Width="190px" ForeColor="White" BorderStyle="Solid" Height="55px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" BackColor=#006666 Text="Student Management" ForeColor="White" OnClick="Button2_Click" style="margin-top: 0px; margin-left: 42px;" Height="54px" Width="220px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
            <asp:Button ID="Button3" runat="server" BackColor=#006666 ForeColor="White" Text="Offered Course" Width="200px" BorderStyle="Solid" Height="55px" OnClick="Button3_Click" /> 
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor=#006666 ForeColor="White" Text="Course Allocation" Width="210px" BorderStyle="Solid" Height="55px" style="margin-left: 2px" OnClick="Button4_Click1" />
            &nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button5" runat="server" BackColor=#006666 ForeColor="White" Text="Generate Reports" Width="180px" BorderStyle="Solid" Height="55px" style="margin-left: 10px" OnClick="Button5_Click" />     


       &nbsp;<asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     


       </p>

        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button6" runat="server" CssClass="auto-style1" ForeColor="White" BackColor ="#FF9999"  BorderColor="White" Text="ADD STUDENT" Width="188px" OnClick="Button6_Click1" visible="false" />
       </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button7" runat="server" ForeColor="White" BackColor ="#FF9999" BorderColor="White" CssClass="auto-style1" Text="DELETE STUDENT" Width="188px"  Height="32px" OnClick="Button7_Click" Visible="false"  />
           </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            &nbsp;<asp:Button ID="Button8" runat="server" ForeColor="White" BackColor ="#FF9999" BorderColor="#FF9999" CssClass="auto-style1" Text="UPDATE STUDENT" Width="190px" Height="32px" OnClick="Button8_Click" visible="false" />
           </p>
       <p>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
           &nbsp;<asp:Button ID="Button9" runat="server" ForeColor="White" OnClick="Button9_Click1" Text="View Students" BackColor ="#FF9999" BorderColor="White" Width="189px" CssClass="auto-style1" Visible="false" Height="43px"  />


        </p>
       <p>
           &nbsp;</p>
       
     <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
   </main>
    <footer>
        <p>&copy; 2023 Academic User. All rights reserved.</p>
    </footer>
    </form>
</body>
</html>
