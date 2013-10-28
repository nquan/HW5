<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
</head>
    <link rel="stylesheet" type="text/css" href="style.css"> 
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Wicked Easy Recipes</h1>
        <h2>Using 5 Ingredients or Less!</h2>
         <a href ="Default.aspx">Home</a> | <a href="NewRecipe.aspx">New Recipe</a> | <a href="AboutUs.aspx">About Us</a> | <a href="ContactUs.aspx">Contact</a>
        <br />
        <br />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipeWebSite %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="387px" Height="188px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="DetailsView.aspx?Id={0}" HeaderText="Submitted By" Text="Select" />
            </Columns>
            <headerstyle backcolor="#FFFF99" forecolor="#F08080"/>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
