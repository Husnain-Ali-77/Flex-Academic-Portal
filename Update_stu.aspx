<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_stu.aspx.cs" Inherits="Update_stu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex | Update Student</title>
</head>
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
            color:cadetblue
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
            <header>
                <h1>Update Student</h1>
            </header>
            <label>
                Student ID:
            </label>
            <asp:TextBox ID="txtStudentID" runat="server" CssClass="textbox" AutoPostBack="true" OnTextChanged="txtStudentID_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Retrieve" BackColor="#00ff00" BorderColor="#00ff00"  />
            <br />
            <br />
            <label>
                First Name:
            </label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="textbox"></asp:TextBox>
            <br />
            <br />
            <label>
                Last Name:
            </label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="textbox"></asp:TextBox>
            <br />
            <br />
            <label>
                Phone Number:
            </label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="textbox"></asp:TextBox>
            <br />
            <br />
            <label>
                Gender:
            </label>
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="textbox">
                <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                <asp:ListItem Text="Female" Value="F"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <label>
                Date of Birth:
            </label>
            <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="textbox"></asp:TextBox>
            <br />
            <br />
            <label>
                Degree Department:
            </label>
            <asp:TextBox ID="txtDegreeDepartment" runat="server" CssClass="textbox"></asp:TextBox>
            <br />
            <br />
            Section:
            <asp:TextBox ID="txtSection" runat="server" CssClass="textbox"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button" OnClick="btnUpdate_Click" Visible="false" BackColor="Lime" />
            <br/>
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Back" />
                    </div>
        <div class="footer">
            <p>&copy; 2023 Flex. All Rights Reserved.</p>
        </div>
        </form>
    </body>
