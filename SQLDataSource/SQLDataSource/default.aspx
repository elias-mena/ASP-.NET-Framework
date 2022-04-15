<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SQLDataSource._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/alta.aspx">Alta de Usuario</asp:HyperLink><br /><br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/consulta.aspx">Consulta de Usuario</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/baja.aspx">Baja de Usuario</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/modificacion.aspx">Modificación de Usuario</asp:HyperLink>
</body>
</html>
