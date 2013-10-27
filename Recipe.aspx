<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe</title>
</head>
    <link rel="stylesheet" type="text/css" href="style.css"> 
<body>
    <form id="form1" runat="server">
    <div>
          <h1>Wicked Easy Recipes</h1> 
        <h2>Using 5 Ingredients or Less</h2>
        <a href ="Default.aspx">Home</a> | <a href="NewRecipe.aspx">New Recipe</a> | <a href="AboutUs.aspx">About Us</a> | <a href="ContactUs.aspx">Contact</a>
    <br />
        <br />
    </div>
        <asp:SqlDataSource ID="RecipeDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipeWebSite %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Recipe Name], [Submitted By], [Ingredient #1], [Ingredient #2], [Ingredient #3], [Ingredient #4], [Ingredient #5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Recipe Name] = @Recipe_Name, [Submitted By] = @Submitted_By, [Ingredient #1] = @column1, [Ingredient #2] = @column2, [Ingredient #3] = @column3, [Ingredient #4] = @column4, [Ingredient #5] = @column5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="RecipeDataSource2" Height="50px" style="margin-right: 1px" Width="343px">
            <Fields>
                <asp:BoundField DataField="Recipe Name" HeaderText="Recipe Name" SortExpression="Recipe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
                <asp:BoundField DataField="Ingredient #1" HeaderText="Ingredient #1" SortExpression="Ingredient #1" />
                <asp:BoundField DataField="Ingredient #2" HeaderText="Ingredient #2" SortExpression="Ingredient #2" />
                <asp:BoundField DataField="Ingredient #3" HeaderText="Ingredient #3" SortExpression="Ingredient #3" />
                <asp:BoundField DataField="Ingredient #4" HeaderText="Ingredient #4" SortExpression="Ingredient #4" />
                <asp:BoundField DataField="Ingredient #5" HeaderText="Ingredient #5" SortExpression="Ingredient #5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <br /><br />
         <div class="copyright">© 2013. 6K:183 Software Design & Development</div>
    </form>
</body>
</html>
