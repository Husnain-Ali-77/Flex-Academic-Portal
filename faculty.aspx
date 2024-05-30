<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty.aspx.cs" Inherits="faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex | Faculty</title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            margin-right: 0px;
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

        .auto-style3 {
            margin-bottom: 0px;
        }

    </style>
</head>
<body>
    <header>
		<h1>Flex | Faculty User</h1>
	</header>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter your id :"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Retrive" />
            <br />
            <br />
<asp:GridView ID="GridView1" runat="server"  OnRowDataBound="GridView1_RowDataBound">


                <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="fksectcourseid,secttionid" 
            DataNavigateUrlFormatString="course.aspx?courseid={0}&sectionid={1}" 
            DataTextField="coursename" HeaderText="Link" />
       
    </Columns>
</asp:GridView>
            <br />
            <br />
            
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
     <footer>
        <p>&copy; 2023 Academic User. All rights reserved.</p>
    </footer>
</body>
</html>
