<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Students.aspx.cs" Inherits="View_Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex | View Students</title>
    <style>
        /* Styling for body and header */
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }
        h1 {
            color: #006666;
            font-size: 36px;
            margin-top: 50px;
            margin-bottom: 30px;
        }
        /* Styling for table */
        table {
            border-collapse: collapse;
            margin: 0 auto;
            width: 80%;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #006666;
            color: #fff;
        }
         .footer {
            background-color: #006666;
            color: #fff;
            text-align: center;
            padding: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>View Students</h1>
            <table>
                <thead>
                    <tr>
                        <th>Student ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone Number</th>
                        <th>Gender</th>
                        <th>Date of Birth</th>
                        <th>Degree Department</th>
                        <th>Section</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="stdid" HeaderText="Student ID" />
                            <asp:BoundField DataField="stdfnam" HeaderText="First Name" />
                            <asp:BoundField DataField="stdlnam" HeaderText="Last Name" />
                            <asp:BoundField DataField="stdphonum" HeaderText="Phone Number" />
                            <asp:BoundField DataField="stdgender" HeaderText="Gender" />
                            <asp:BoundField DataField="stddob" HeaderText="Date of Birth" />
                            <asp:BoundField DataField="stddegreedepart" HeaderText="Degree Department" />
                            <asp:BoundField DataField="stusection" HeaderText="Section" />
                        </Columns>
                    </asp:GridView>
                </tbody>
            </table>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="btn-back" OnClick="Button1_Click" Text="Back" BackColor="#00ff00" />
        </p>
         <div class="footer">
            <p>&copy; 2023 Flex. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
