<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacion.aspx.cs" Inherits="SQLConnection.modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
Nombre
        de usuario:
        <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" OnClick="ButtonBuscar_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
        <br />
            Clave:
            <asp:TextBox ID="TextBoxClave" runat="server"></asp:TextBox>

      
            <br />

      
            Mail:<asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox>

        <br />
        <asp:Button ID="ButtonModificar" runat="server" Text="Modificar" OnClick="ButtonModificar_Click" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLinkRetornar" runat="server" NavigateUrl="~/default.aspx">Retornar</asp:HyperLink>
    </form>
</body>
</html>
