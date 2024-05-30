<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Generate_reports.aspx.cs" Inherits="Generate_reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generate Reports</title>
    <style>
        body {
            background-color: darkgrey;
            margin: 0;
            padding: 0;
        }

        .header{
            background-color: #006666;
            color: white;
            padding: 10px;
            text-align: center;
        }
        .footer
        {
            background-color: #006666;
            color: white;
            padding: 3px;
            text-align: center;
        }
        .content {
            margin: 20px;
        }
        .auto-style1 {
            margin-left: 193px;
        }
        .auto-style2 {
            margin-left: 201px;
        }
        .auto-style3 {
            margin-left: 157px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Generate Reports</h1>
        </div>
        <div class="content">
            <!-- Your content goes here -->
            <asp:Button ID="btnOfferedCourseReport" runat="server" Text="Offered Course Report" OnClick="btnOfferedCourseReport_Click" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="789px">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="btnStudentSectionReport" runat="server" Text="Student Section Report" OnClick="btnStudentSectionReport_Click" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" CssClass="auto-style2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="864px">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="btnCourseAllocationReport" runat="server" Text="Course Allocation Report" OnClick="btnCourseAllocationReport_Click" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView3" runat="server" CssClass="auto-style3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="983px">
            </asp:GridView>
            <br />
            <br />

        </div>
        <div class="footer">
            <p>2023 Flex. All Rights Reserved.</p>
        </div>
    </form>
</body>

</html>
