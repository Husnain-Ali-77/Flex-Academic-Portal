<%@ Page Language="C#" AutoEventWireup="true" CodeFile="s1.aspx.cs" Inherits="s1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Entering page </title>
</head>
<body>

    <form id="form1" runat="server">
         <body  style="background-color:#2e3047;">

               <div style="background-color: #006666;border: 2px ;border-radius: 8px;padding: 5px;">     
            <center style="height: 57px">
                <h1 style="height: 49px; width: 1487px;">
            <asp:Label ID="Label1" runat="server" Text="FLEX | Student" Text-size="100" BackColor="#006666" ForeColor="white" BorderColor="#006666"></asp:Label>
                    </h1>
                </center>
        </div>

               <asp:Label ID="Label2"  runat="server" Text="Student Profile"  ForeColor="white" Style="font-style: oblique; font-weight: bold; font-size:30px;"></asp:Label>       
                 <asp:Label ID="Label3"  runat="server" Text=" | CONFIRMATION" ForeColor="white" Text-size="100" Style="font-style: oblique;"></asp:Label>

             <br /><br />
             <center>
             <asp:Label ID="Label4" runat="server" Text="Enter StudentID : "  ForeColor="white" style="font-size:30px;font-style: oblique;"></asp:Label>
             <asp:TextBox ID="TextBox1" runat="server" Width="230px" Height="24px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
             <br />     <br />
  <asp:Button ID="Button1" runat="server" Text="ENTER" OnClick="Button1_Click" BackColor="#006666" />
</center>
             <div style="height: 436px">
                
                 <br />
                
             </div>
    <div style="border:3px;border-radius:10px;background-color:#006666;">
        <center>
             <asp:Label ID="Label5" runat="server" Text="ALL RIGHTS RESERVED 2023 | FLEX Student"  ForeColor="white" style="font-size:30px;font-style: oblique;"></asp:Label>
        </center>

    </div>
     </form>
</body>
          
</html>
