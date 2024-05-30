<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shome.aspx.cs" Inherits="shome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
 <style>
        div.t1{
            border-style: none;
         border-color: inherit;
         border-width: 2px;
         background-color:#006666;
            font-size:35px;
           border-radius: 8px;
         width: 1506px;
     }

    </style>

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
            <div style="height: 150px">
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



                    <asp:Label ID="Label2"  runat="server" Text="Student Profile"  ForeColor="white" Style="font-style: oblique; font-weight: bold; font-size:30px;"></asp:Label>       
                 <asp:Label ID="Label3"  runat="server" Text="| HOME" ForeColor="white" Text-size="100" Style="font-style: oblique;"></asp:Label>

            <br /><br />
            <div class="t1">
            <asp:Label ID="Label10" runat="server" Text=" University Information" text-size="200" BackColor="#006666" ForeColor="white"></asp:Label>
                <br />
                </div>
            <br />
          <asp:Table ID="Table1" runat="server" Width="1501px"  style=" border:2px solid #006666;border-radius:10px;" Height="111px">
                <asp:TableRow>
                    <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label4" runat="server" Text="Roll No: "  ForeColor="white"></asp:Label>

                         <asp:Label ID="Label17" runat="server"  ForeColor="white"></asp:Label>
                    </asp:TableCell>
                     <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label5" runat="server" Text="Section: "  ForeColor="white"></asp:Label>
                          <asp:Label ID="Label9" runat="server"  ForeColor="white"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label6" runat="server" Text="Degree: "  ForeColor="white"></asp:Label>
                         <asp:Label ID="Label8" runat="server"  ForeColor="white"></asp:Label>
                    </asp:TableCell>
                     <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label7" runat="server" Text="Status: "  ForeColor="white"></asp:Label>
                          <asp:Label ID="Label18" runat="server" Text="Current" ForeColor="white"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <div class="t1">
               <asp:Label ID="Label11" runat="server" Text=" Personal Information" text-size="200" BackColor="#006666" ForeColor="white"></asp:Label>
                <br />
                </div>
            <br />
          <asp:Table ID="Table2" runat="server" Width="1502px"  style="border:2px solid #006666;border-radius:10px;" Height="111px">
                <asp:TableRow>
                    <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label12" runat="server" Text="First Name: "  ForeColor="white"></asp:Label>
                         <asp:Label ID="Label19" runat="server"  ForeColor="white"></asp:Label>
                    </asp:TableCell>
                     <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label13" runat="server" Text="Last Name: "  ForeColor="white"></asp:Label>
                          <asp:Label ID="Label20" runat="server"  ForeColor="white"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label14" runat="server" Text="Gender: "  ForeColor="white"></asp:Label>
                         <asp:Label ID="Label21" runat="server"  ForeColor="white"></asp:Label>
                    </asp:TableCell>
                     <asp:TableCell style="text-align: left;"> 
                        <asp:Label ID="Label15" runat="server" Text="Phone: "  ForeColor="white"></asp:Label>
                          <asp:Label ID="Label22" runat="server"  ForeColor="white"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
              </asp:Table>
            <br />
   
                   
    <div style="border:3px;border-radius:10px;background-color:#006666;">
        <center style="width: 1506px">
             <asp:Label ID="Label16" runat="server" Text="ALL RIGHTS RESERVED 2023 | FLEX Student"  ForeColor="white" style="font-size:30px;font-style: oblique;"></asp:Label>
        </center>

    </div>

        </form>

</body>
</html>
