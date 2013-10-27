<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Wicked Easy Recipes
        <br />
        Using 5 Ingredients or Less!
        <br /><br />
         <a href ="Default.aspx">Home</a> | <a href="NewRecipe.aspx">New Recipe</a> | <a href="AboutUs.aspx">About Us</a> | Contact
        <asp:SqlDataSource ID="RecipeDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipeWebSite %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="RecipeDataSource1" Height="147px" Width="318px">
            <Columns>
                <asp:BoundField DataField="Recipe Name" HeaderText="Recipe Name" SortExpression="Recipe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Recipe.aspx?={0}" HeaderText="Submitted By" Text="Select" />
            </Columns>
        </asp:GridView>
        <br /><br />
        © 2013. 6K:183 Software Design & Development
    
    </div>
    </form>
</body>
</html>
