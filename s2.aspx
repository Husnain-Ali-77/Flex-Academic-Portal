<%@ Page Language="C#" AutoEventWireup="true" CodeFile="s2.aspx.cs" Inherits="s2" %>

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
             <asp:Panel ID="Panel2" runat="server" Height="572px" style="margin-left: 200px; margin-top: 9px; border: 0px solid #fff; border-radius: 10px;"
                 Width="432px" BorderColor="White" 
                 BorderWidth="0px" BackColor="#0033CC" >
             <%--<p>Ali 110
                 </p>--%>
              <p aria-multiline="False" dir="ltr" draggable="false">
                  <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="27pt" Font-Strikeout="False" ForeColor="White" Height="71px" Text="
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      Register yourself" Width="380px" style="margin-top: 0px"></asp:Label>
                  </p>


            <p style="height: 53px; margin-top: 0px; margin-bottom: 28px;">
                <asp:Label ID="Label3" runat="server" Font-Size="18pt" ForeColor="White" Height="79px" style="margin-left: 127px; margin-top: 0px; font-style: oblique;"
                    Text="&lt;br&gt;&lt;br&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&nbsp;&nbsp;Username" Width="136px"></asp:Label>

                &nbsp;
                </p>
        
                
                 <p style="height: 58px; margin-top: 5px; margin-bottom: 19px; margin-left: 120px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="Tb1" runat="server" Height="34px" Width="176px" style="margin-left: 0px; border-radius: 12px;" BackColor="#CCFFFF"></asp:TextBox>
                 </p>
          <p style="height: 13px; margin-top: 0px; margin-bottom: 14px;">
                <asp:Label ID="Label4" runat="server" Font-Size="18pt" ForeColor="White" Height="36px" style="margin-left: 127px; margin-top: 0px; font-style: oblique;"
                    Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password" Width="136px"></asp:Label>

                &nbsp;
                </p>
                 <p style="height: 58px; margin-top: 5px; margin-bottom: 28px; margin-left: 120px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="Tb2" runat="server" Height="34px" Width="176px" style="margin-left: 2px; border-radius: 12px;" BackColor="#CCFFFF"></asp:TextBox>
                 </p>
 <p style="height: 78px; margin-top: 0px; margin-bottom: 14px;">
                <asp:Label ID="Label5" runat="server" Font-Size="18pt" ForeColor="White" Height="28px" style="margin-left: 146px; margin-top: 0px; font-style: oblique;"
                    Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Role" Width="136px"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCFFFF" Height="27px" style="margin-left: 0px; margin-top: 0px; margin-bottom: 0px; border-radius:12px;" Width="110px">
                    <asp:ListItem Value="Academic Officer"></asp:ListItem>
                    <asp:ListItem Value="Faculty"></asp:ListItem>
                    <asp:ListItem Value="Student"></asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
<p style="height: 7px; margin-top: 0px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="errorMsg" runat="server"  Text=""
    ForeColor="#CC0000" Font-Size="Large"></asp:Label></p>
              <p style="height: 60px; margin-top: 0px">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#66FF99" Font-Bold="True" ForeColor="Black" Height="27px" style="margin-left: 14px; margin-top: 0px; margin-bottom: 0px; border-radius:12px;" Text="Signup" Width="89px" OnClick="Button1_Click2" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
           
                 </asp:Panel>
         </form>
</body>
</html>
