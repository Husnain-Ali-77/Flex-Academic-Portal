<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-image: url('blue.jpg');
        }

        .my-link-button1:hover {
           background-color: #FF0000;
            border-color: #FF3333;
        }

        .my-link-button2:hover {
           background-color: #FF0000;
            border-color: #FF3333;
        }
    </style>
</head>

<body>
    
         <form id="form1" runat="server">
          <asp:Panel ID="Panel1" runat="server" BackColor="#0000CC" ForeColor="#0066FF" style="margin-bottom: 44px" Width="1400px" Height="72px">

                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="34pt" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Height="60px" Text="&nbsp;&nbsp;Flex Academic portal" Width="450px"></asp:Label>
                 &nbsp;&nbsp;
           <img src="fast.png" alt="Image description" style="height: 38px; width: 106px; margin-top: 0px;"/></asp:Panel>
      
           <%-- <p>
             <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#000099" BorderColor="#0099CC" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Font-Overline="True" OnClick="LinkButton1_Click">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Academic Officer</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<img src="sirAmir.png" alt="Image description" style="height: 68px; width: 129px; margin-top: 0px;"/>
            </p>
             <p><br/><br/>
                 <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#000099" BorderColor="#0099CC" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Font-Overline="True" OnClick="LinkButton2_Click">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Faculty</asp:LinkButton>
             </p>
              <p><br/><br/>
                 <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#000099" BorderColor="#0099CC" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Font-Overline="True">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Student</asp:LinkButton>
             </p>--%>
             <asp:Panel ID="Panel2" runat="server" Height="408px" style="margin-left: 225px; margin-top: 44px; border: 1px solid #fff; border-radius: 10px; margin-right: 0px;"
                 Width="410px" BorderColor="White" 
                 BorderWidth="500px" BorderStyle="Dotted"  >
             <%--<p>Ali 110
                 </p>--%>
              <p aria-multiline="False" dir="ltr" draggable="false" style="height: 11px; margin-top: 50px">
                  <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="27pt" Font-Strikeout="False" ForeColor="White" Height="52px" Text="
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  Login" Width="192px" style="margin-left: 105px; border-radius: 12px; margin-top: 0px;" BackColor="#FF3300" BorderStyle="None"></asp:Label>
                  </p>


            <p style="height: 53px; margin-top: 0px; margin-bottom: 28px; width: 403px;">
                <asp:Label ID="Label3" runat="server" Font-Size="18pt" ForeColor="White" Height="79px" style="margin-left: 114px; margin-top: 0px; font-style: oblique;"
                    Text="&lt;br&gt;&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&nbsp;&nbsp;Username" Width="183px"></asp:Label>

                &nbsp;
                </p>
        
                
                 <p style="height: 58px; margin-top: 5px; margin-bottom: 19px; margin-left: 120px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="Tb1" runat="server" Height="34px" Width="176px" style="margin-left: 0px; border-radius: 12px;" BackColor="#CCFFFF" BorderColor="White" BorderStyle="Groove"></asp:TextBox>
                 </p>
          <p style="height: 13px; margin-top: 0px; margin-bottom: 14px;">
                <asp:Label ID="Label4" runat="server" Font-Size="18pt" ForeColor="White" Height="36px" style="margin-left: 119px; margin-top: 0px; font-style: oblique;"
                    Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password" Width="136px"></asp:Label>

                &nbsp;
                </p>
                 <p style="height: 58px; margin-top: 5px; margin-bottom: 18px; margin-left: 120px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="Tb2" runat="server" Height="34px" Width="173px" style="margin-left: 0px; border-radius: 12px;" BackColor="#CCFFFF"></asp:TextBox>
                 </p>
 
<p style="height: 7px; margin-top: 0px; margin-bottom: 24px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="errorMsg" runat="server"  Text=""
    ForeColor="#CC0000" Font-Size="Large"></asp:Label></p>
<p style="height: 36px; margin-top: 9px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#336699" Font-Size="14pt" ForeColor="White" Height="27px" style="margin-left: 0px; border-radius: 12px;" Text="Done" Width="66px" OnClick="Button1_Click" />
    </p>
                 </asp:Panel>
         </form>
</body>
</html>
