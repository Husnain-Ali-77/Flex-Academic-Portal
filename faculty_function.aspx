<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faculty_function.aspx.cs" Inherits="faculty_function" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            margin-right: 0px;
        }
        .button {
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            color: white;
        }
        .button-primary {
            background-color: #0077B5;
        }
        .button-secondary {
            background-color: #454545;
        }
        .button-accent {
            background-color: #FFD600;
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
            margin-top: 0px;
        }
        .auto-style4 {
            margin-left: 282px;
        }

        .auto-style5 {
            margin-left: 204px;
        }
        .auto-style6 {
            margin-left: 218px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" CssClass="button button-secondary auto-style2"
                OnClick="Button5_Click" Text="Marks Distribution" Width="280px" />
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="516px">
<Columns>
<asp:BoundField DataField="Evaluation Name" HeaderText="Column Name" />
<asp:TemplateField HeaderText="Weightage (%)">
<ItemTemplate>
<asp:TextBox ID="TextBoxWeightage" runat="server"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<asp:Button ID="ButtonSubmit" runat="server" Text="Submit" Visible="false" OnClick="ButtonSubmit_Click" CssClass="auto-style3" />


            <br />
            <br />
            <br />
&nbsp;&nbsp;

            <asp:Button ID="Button6" runat="server" CssClass="button button-secondary" Text="Manage Evaluations" Width="282px" OnClick="Button6_Click" />
            &nbsp;&nbsp;
            <br />
            <br />
            <br /><asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style5" Width="1003px">
    <Columns>
        <asp:BoundField DataField="Student ID" HeaderText="Student ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Total Marks" HeaderText="Total Marks" />
        <asp:TemplateField HeaderText="Obtained Marks">
            <ItemTemplate>
                <asp:TextBox ID="txtObtainMarks" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click1" Text="Update" />
             <br />
            <br />
            <br />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Mark Attendance" 
                CssClass="button button-primary" OnClick="Button2_Click" Width="269px" />
            <br />
            <br />
            <br />
       <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" CssClass="auto-style6" Width="837px">
    <Columns>
        <asp:BoundField DataField="stdid" HeaderText="Student ID" />
        <asp:BoundField DataField="stdname" HeaderText="Student Name" />
        <asp:TemplateField HeaderText="Attendance">
            <ItemTemplate>
                <asp:TextBox ID="txtAttendance" runat="server" Text='<%# Eval("Attendance") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView>








            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" BackColor="Lime" BorderColor="#66FF66" OnClick="Button7_Click1" Text="Save" />







            <br />
          
            <br />
            <br />
            &nbsp;
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Reports and Grades" 
                CssClass="button button-accent auto-style1" Width="276px" OnClick="Button4_Click" style="margin-left: 6px" />
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
            <br />
        </div>
    </form>
     <footer>
        <p>&copy; 2023 Academic User. All rights reserved.</p>
    </footer>
</body>
</html>
