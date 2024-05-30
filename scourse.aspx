<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scourse.aspx.cs" Inherits="scourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> HOME </title>
    <style type="text/css">
        #form1 {
            height: 229px;
        }
    </style>
</head>
<body>
    
<body  style="background-color:#2e3047;">
    <form id="form1" runat="server">
          <div style="background-color: #006666;border: 2px ;border-radius: 8px;padding: 5px;">     
            <center style="height: 57px">
                <h1 style="height: 49px; width: 1487px;">
            <asp:Label ID="Label1" runat="server" Text="FLEX | Student" Text-size="100" BackColor="#006666" ForeColor="white" BorderColor="#006666"></asp:Label>
                    </h1>
                </center>
        </div>
        <br />
            <div style="height: 106px">
                <asp:Table ID="Table3" runat="server" Width="1498px" Height="103px">
                 <asp:TableRow>
                    <asp:TableCell style="text-align: center;  font-size:20px;  border:2px; border-radius:20px; background-color:#006666;" >
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="WHITE">HOME</asp:LinkButton>
                        </asp:TableCell>
                      <asp:TableCell style="text-align: center;  font-size:20px;  border:2px; border-radius:20px; background-color:#006666;"> 
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ForeColor="WHITE">COURSE REGISTER</asp:LinkButton>
                        </asp:TableCell>
                      <asp:TableCell style="text-align: center;  font-size:20px;  border:2px; border-radius:20px; background-color:#006666;"> 
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" ForeColor="WHITE">ATTENDENCE</asp:LinkButton>
                        </asp:TableCell>
                      <asp:TableCell style="text-align: center;  font-size:20px;  border:2px; border-radius:20px; background-color:#006666;"> 
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" ForeColor="WHITE">TRANSCRIPT</asp:LinkButton>
                        </asp:TableCell>
                      <asp:TableCell style="text-align: center;  font-size:20px;  border:2px; border-radius:20px; background-color:#006666;"> 
                            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" ForeColor="WHITE">FEES AND DUES</asp:LinkButton>
                        </asp:TableCell>
                      <asp:TableCell style="text-align: center;  font-size:20px;  border:2px; border-radius:20px; background-color:#006666;"> 
                         <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" ForeColor="WHITE">FEEDBACK</asp:LinkButton>
                        </asp:TableCell>
                    </asp:TableRow>
                 </asp:Table>
            </div>

           <asp:Label ID="Label2"  runat="server" Text="COURSE REGISTRATION"  ForeColor="white" Style="font-style: oblique; font-weight: bold; font-size:30px;"></asp:Label>       
              <br /><br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="CS10101 Introduction to Computer Science"  ForeColor="white" Style="font-style: oblique; "></asp:Label>

            <asp:CheckBox ID="CheckBox1" runat="server" />
            <br />
            <asp:Label ID="Label4" runat="server" Text="MATH101 Physics I   "  ForeColor="white" Style="font-style: oblique; "></asp:Label>
            <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />
            <br />
            <asp:Label ID="Label5" runat="server" Text="PHY10101 Calculus I "  ForeColor="white" Style="font-style: oblique; "></asp:Label>
            <asp:CheckBox ID="CheckBox3" runat="server" OnCheckedChanged="CheckBox3_CheckedChanged" />
            <br />
            <asp:Label ID="Label6" runat="server" Text="ENG10101 Composition and Rhetoric   "  ForeColor="white" Style="font-style: oblique; "></asp:Label>
            <asp:CheckBox ID="CheckBox4" runat="server" OnCheckedChanged="CheckBox4_CheckedChanged" />
            <br />
            <asp:Label ID="Label7" runat="server" Text="HIS10101 World History I    "  ForeColor="white" Style="font-style: oblique; "></asp:Label>
            <asp:CheckBox ID="CheckBox5" runat="server" OnCheckedChanged="CheckBox5_CheckedChanged" />
            <br />
            <asp:Label ID="Label8" runat="server" Text="CS10201 Data Structures and Algorithms  "  ForeColor="white" Style="font-style: oblique; "></asp:Label>
            <asp:CheckBox ID="CheckBox6" runat="server" OnCheckedChanged="CheckBox6_CheckedChanged" />
            <br />
            <asp:Label ID="Label9" runat="server" Text="ENG10201 Literature and Culture "  ForeColor="white" Style="font-style: oblique; "></asp:Label>
            <asp:CheckBox ID="CheckBox7" runat="server" OnCheckedChanged="CheckBox7_CheckedChanged" />

        </div>

        <center>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTER" BackColor="#006666" />
            </center>

    </form>
</body>
</html>
