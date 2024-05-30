<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_stu.aspx.cs" Inherits="Delete_stu" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Flex | Delete Student</title>
     <style>
       body {
    background-color:darkgrey;
    font-family: Arial, sans-serif;
}
      
}
        h1 {
            font-size: 36px;
            text-align: center;
            margin-top: 50px;
        }
        
        label {
            font-size: 18px;
            margin-right: 10px;
        }
        
        #form1 {
            width: 80%;
            margin: 0 auto;
        }
        
        #TextBox1 {
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        
        #btnRetrieve, #btnDelete, #Button1 {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }
        
        #btnRetrieve:hover, #btnDelete:hover, #Button1:hover {
            background-color: #3e8e41;
        }
        
        #gvStudentInfo {
            margin-top: 50px;
        }
        
        th {
            font-size: 20px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
            padding: 0px;
        }
        
        td {
            font-size: 18px;
            padding: 10px;
        }
        
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
         .auto-style1 {
             width: 87%;
             height: 943px;
             margin-left: 0px;
             margin-top: 41;
         }
          .footer {
            background-color: #006666;
            color: #fff;
            text-align: center;
            padding:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <header>
		<h1>Delete Student</h1>
	</header>
            <label>
            <br />
            Student ID:</label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve" OnClick="btnRetrieve_Click" />
           <asp:GridView ID="gvStudentInfo" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gvStudentInfo_SelectedIndexChanged1">
                <Columns>
                    <asp:BoundField DataField="stdid" HeaderText="ID" />
                    <asp:BoundField DataField="stdfnam" HeaderText="First Name" />
                    <asp:BoundField DataField="stdlnam" HeaderText="Last Name" />
                    <asp:BoundField DataField="stdphonum" HeaderText="Phone Number" />
                    <asp:BoundField DataField="stdgender" HeaderText="Gender" />
                    <asp:BoundField DataField="stddob" HeaderText="Date of Birth" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="stddegreedepart" HeaderText="Degree Department" />
                    <asp:BoundField DataField="stusection" HeaderText="Section" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Visible="false" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="BACK"  />
            <br />
            <br />
        </div>
        <div class="footer">
            <p>&copy; 2023 Flex. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>



