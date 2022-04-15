<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta.aspx.cs" Inherits="SQLConnection.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    Nombre:
    <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
    <br />
    Clave:
    <asp:TextBox ID="TextBoxClave" runat="server"></asp:TextBox>
    <br />
    Mail:
    <asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="ButtonInsertar" runat="server" Text="Alta" OnClick="ButtonInsertar_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
       <asp:HyperLink ID="HyperLinkRetornar" runat="server" NavigateUrl="~/default.aspx">Retornar</asp:HyperLink>
    </form>


</body>
</html>
