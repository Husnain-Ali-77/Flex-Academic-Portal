<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
            body {
                background-image: url('blue.jpg');
           }
     </style>
</head>
<body>
    <form id="form1" runat="server">
       
             <asp:Panel ID="Panel1" runat="server" BackColor="#0000CC" ForeColor="White" style="margin-bottom: 44px" Width="1400px" Height="72px" Font-Size="14pt">

                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="34pt" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Height="60px" Text="&nbsp;&nbsp;Flex Academic portal" Width="450px"></asp:Label>
                 &nbsp;&nbsp;
           <img src="fast.png" alt="Image description" style="height: 38px; width: 106px; margin-top: 0px;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button1" runat="server" BackColor="#0000CC" BorderWidth="0px" Font-Bold="True" Font-Italic="False" Font-Size="14pt" ForeColor="White" style="margin-left: 36px" Text="Login" Width="82px" OnClick="Button1_Click" PostBackUrl="~/login.aspx" />
                 <asp:Button ID="Button2" runat="server" BackColor="#FF6600" BorderWidth="0px" Font-Bold="True" Font-Size="16pt" ForeColor="White" Height="37px" OnClick="Button2_Click" style="margin-left: 18px; border-radius: 12px;" Text="Signup" Width="113px" PostBackUrl="~/s2.aspx"/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Panel>
             <asp:Panel ID="Panel2" runat="server" Height="571px" style="margin-top: 0px; margin-left: 213px; margin-bottom: 50px;" BackColor="#FF3300" BackImageUrl="~/m1.jpg" Width="860px">
             </asp:Panel>
    </form>
</body>
</html>
