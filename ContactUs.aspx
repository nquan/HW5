<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <link rel="stylesheet" type="text/css" href="style.css"> 
<body>
    <form id="form1" runat="server">
    <div>
                   <h1>Wicked Easy Recipes</h1>
        <h2> Usign 5 Ingredients or Less!</h2>
        <a href ="Default.aspx">Home</a> | <a href="NewRecipe.aspx">New Recipe</a> | <a href="AboutUs.aspx">About Us</a> | <a href="ContactUs.aspx">Contact</a>
    <br />
        <br /><br />
        <br /><br />
        <div id="email">Your Email Address:</div>
        <br />

                   <br />
                   <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="236px"></asp:TextBox>
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
                   <div id="message">Your Message</div><br />
                   <br />
                   <asp:TextBox ID="TextBox2" runat="server" Height="63px" Width="398px"></asp:TextBox>
                   <br />
                   <br />
                   <br />
                   <br />
                   <a href="nayong-quan@uiowa.com"><asp:Button ID="Button1" runat="server" Text="Send Message" /></a>
                   <br />

    </div>
    </form>

         <br /><br />
        <div class="copyright">© 2013. 6K:183 Software Design & Development</div>
</body>
</html>
