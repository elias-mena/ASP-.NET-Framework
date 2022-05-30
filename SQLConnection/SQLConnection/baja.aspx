<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baja.aspx.cs" Inherits="SQLConnection.baja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ingrese el nombre del usuario:
            <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="ButtonEliminar" runat="server" Text="Borrar" OnClick="ButtonEliminar_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLinkRetornar" runat="server" NavigateUrl="~/default.aspx">Retornar</asp:HyperLink>

        </div>
    </form>
</body>
</html>

