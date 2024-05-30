<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assign_teacher.aspx.cs" Inherits="Assign_teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assign Teachers to Sections</title>
    <style>
        body {
            background-color: darkgrey;
        }
        #header {
            background-color: #006666;
            color: white;
            padding: 10px;
        }
        #footer {
            background-color: #006666;
            color: white;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            text-align: center;
        }
        .auto-style1 {
            left: 15px;
            bottom: 12px;
            height: 34px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <h1>Assign Teachers to Sections</h1>
        </div>
        <div>
            <h2>Sections<asp:GridView ID="GridView1" runat="server" Height="153px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="269px">
                </asp:GridView>
            <asp:Button ID="btnAssignFaculty" runat="server" Text="Assign Faculty" OnClick="btnAssignFaculty_Click" CssClass="auto-style2" />
            </h2>



        </div>
        <div>
            <h2>&nbsp;Faculty</h2>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="137px">
            </asp:CheckBoxList>
            <br />
        </div>
        <div id="footer" class="auto-style1">
            &copy; 2023 Flex. All Rights Reserved.
        </div>
    </form>
</body>
</html>
