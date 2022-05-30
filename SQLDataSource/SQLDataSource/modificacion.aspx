<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacion.aspx.cs" Inherits="SQLDataSource.modificacion" %>

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
        <br />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ProviderName="System.Data.Odbc" 
            ConnectionString="Driver={PostgreSQL ODBC Driver(UNICODE)};database=base1;server=127.0.0.1;port=5432;uid=postgres;pwd=admin;sslmode=disable;readonly=0;protocol=7.4;fakeoidindex=0;showoidcolumn=0;rowversioning=0;showsystemtables=0;fetch=100;unknownsizes=0;maxvarcharsize=255;maxlongvarcharsize=8190;debug=0;commlog=0;usedeclarefetch=0;textaslongvarchar=1;unknownsaslongvarchar=0;boolsaschar=1;parse=0;lfconversion=1;updatablecursors=1;trueisminus1=0;bi=0;byteaaslongvarbinary=1;useserversideprepare=1;lowercaseidentifier=0;d6=-101;optionalerrors=0;xaopt=1" >
        </asp:SqlDataSource>
    </form>
</body>
</html>
