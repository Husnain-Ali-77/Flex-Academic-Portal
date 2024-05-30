<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stranscript.aspx.cs" Inherits="stranscript" %>

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

            <br /><br />

                    <asp:Label ID="Label2"  runat="server" Text="Transcript"  ForeColor="white" Style="font-style: oblique; font-weight: bold; font-size:30px;"></asp:Label>       
            <br />
            <br />
            <div style="width: 619px; float:left; width:18%;">
            <asp:GridView ID="GridView1" runat="server" ForeColor="White" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="courseid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="courseid" HeaderText="courseid" ReadOnly="True" SortExpression="courseid" />
                    <asp:BoundField DataField="coursename" HeaderText="coursename" SortExpression="coursename" />
                    <asp:BoundField DataField="credithour" HeaderText="credithour" SortExpression="credithour" />   
                </Columns>
            </asp:GridView>
             

                <br />
                                             
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flexConnectionString %>" SelectCommand="SELECT [courseid], [coursename], [credithour] FROM [course]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                 </div >
                <div style="width: 619px; float:right; width:82%; height: 330px;">

                    <asp:Table ID="Table4" runat="server" BorderStyle="Groove">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label3" runat="server" Text="grade" ForeColor="White"></asp:Label>
                                <br /><br />
                            </asp:TableCell>
                            
                        </asp:TableRow>
                      
                         <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label4" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label5" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label6" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label7" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label8" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label9" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label10" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label11" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label12" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label13" runat="server" Text="-" ForeColor="White"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                </div>>
    </form>
    
</body>
</html>
