<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course_offer.aspx.cs" Inherits="Course_offer" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex | Course Offer</title>
    <style>
        /* Overall styling */
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }
        
        /* Header styling */
.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #006666;
    padding: 20px;
    color: #fff;
    margin-bottom: 0;
}


        .header h1 {
            font-size: 36px;
            font-weight: bold;
            margin: 0;
        }
        
        /* Gridview styling */
        .grid-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            height: 100vh;
            padding-left: 20px;
            padding-right: 20px;
        }
        
        .gridview {
            border-collapse: collapse;
            width: 100%;
        }
        
        .gridview th, .gridview td {
            text-align: left;
            padding: 12px;
        }
        
        .gridview th {
            background-color: #006666;
            color: #fff;
        }
        
        .gridview tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        .gridview tr:hover {
            background-color: #ddd;
        }
        
        .button-container {
            display: flex;
            justify-content: flex-start;
            width: 100%;
        }
        
        .refresh-button {
            background-color: #006666;
            color: #fff;
            border: none;
            padding: 10px;
            margin-right: 20px;
        }
        
        .footer {
            background-color: #006666;
            color: #fff;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
      
        <header class="header">
            <h1>Flex | Course Offer</h1>
        </header>
        
        <div class="grid-container">
            
            
            <br />
            
            <asp:GridView ID="GridView2" runat="server" CssClass="gridview" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            </asp:GridView>
        </div>
        
        <br />
        
        <div class="footer">
            <p>&copy; 2023 Flex. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
