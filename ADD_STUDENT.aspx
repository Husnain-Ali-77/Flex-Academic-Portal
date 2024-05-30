<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD_STUDENT.aspx.cs" Inherits="ADD_STUDENT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Student</title>
     <style>
        body {
            background-color:darkgrey;
    font-family: Arial, sans-serif;
        }
     form {
        background-color: white;
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    td {
        padding: 10px;
        border: 1px solid #ddd;
        font-size: 16px;
        vertical-align: middle;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input[type=text] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 16px;
        margin-bottom: 10px;
    }

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    .error-message {
        color: red;
        font-weight: bold;
        margin-top: 10px;
    }
         .auto-style1 {
             height: 541px;
         }
         .auto-style4 {
             width: 410px;
         }
         .auto-style6 {
             width: 122px;
         }
         .auto-style7 {
             margin-left: 0px;
         }
         .auto-style8 {
             width: 56px;
         }
          .footer {
            background-color: #006666;
            color: #fff;
            text-align: center;
            padding: 20px;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Add Student</h1>
        <table class="auto-style1">
            <tr>
                <td><label for="stdidTextBox">Student ID</label></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" required OnTextChanged="TextBox2_TextChanged1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>First Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" required></asp:TextBox>
&nbsp; </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" required ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td class="auto-style4">
                    <asp:TextBox type="tel" ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><label for="stdgenderTextBox">Gender</label></td>
                <td class="auto-style4">
                    <input type="radio" name="gender" id="maleRadio" value="Male" runat="server" required/><label for="maleRadio">Male</label>
                    <input type="radio" name="gender" id="femaleRadio" value="Female" runat="server" required/><label for="femaleRadio">Female</label>
                </td>
             <td class="auto-style8"><label for="stddob" class="auto-style6">Date of Birth:&nbsp; </label>
                </td>
    <td><label for="stddob">
        <asp:TextBox ID="TextBox6" type="date" runat="server" CssClass="auto-style7" OnTextChanged="TextBox6_TextChanged" Width="123px"></asp:TextBox>
        </label></td>
  </tr>
  <tr>
    <td><label for="stddegreedepart">Degree/Department:</label></td>
    <td class="auto-style4">

        <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged" required></asp:TextBox>

      </td>
  </tr>
  <tr>
    <td><label for="stusection">Section:</label></td>
    <td class="auto-style4">
        <asp:TextBox type="text" ID="TextBox8" runat="server" pattern="[A-Za-z]" title="Only one letter is allowed"></asp:TextBox>
        <br />
        <br />
      </td>
  </tr>
</table>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp<asp:Button ID="Button1" runat="server" Text="Add Student " OnClick="Button1_Click" />
   
        <br />
        </div>
        <div class="footer">
            <p>&copy; 2023 Flex. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
