<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="Taller2.insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agregar Alumno</title>
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
        <style>
            body{
                background-color:beige;
            }
            a{
              text-decoration: none;
              color: white;
            }
        </style>
</head>
<body>
    <div class="container-fluid d-flex align-items-center justify-content-center flex-column">
    <form id="form1" runat="server" class="mt-5">
        <div>
            <h2 class="mb-5">Agregar Alumno</h2>
  
            <label for="TextBoxCode" class="sr-only">Codigo</label>
            <asp:TextBox ID="TextBoxCode" runat="server" placeholder="Codigo" CssClass="form-control" required autofocus></asp:TextBox>
               
            <label for="TextBoxNombre" class="sr-only">Nombre Completo</label>
            <asp:TextBox ID="TextBoxNombre" runat="server" placeholder="Nombre Completo" CssClass="form-control" required autofocus></asp:TextBox>
  
            <label for="DropDownListProvincia" class="sr-only">Provincia</label>
            <asp:DropDownList ID="DropDownListProvincia" runat="server" CssClass="form-select">
                <asp:ListItem>San José</asp:ListItem>
                <asp:ListItem>Alajuela</asp:ListItem>
                <asp:ListItem>Heredia</asp:ListItem>
                <asp:ListItem>Cartago</asp:ListItem>
                <asp:ListItem>Heredia</asp:ListItem>
                <asp:ListItem>Limón</asp:ListItem>
                <asp:ListItem>Puntarenas</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="ButtonInsert" runat="server" Text="Agregar" CssClass="btn btn-lg btn-primary btn-block mt-2" OnClick="ButtonInsert_Click"/>
            <button type="button" class="btn btn-lg btn-secondary btn-block mt-2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/actions.aspx">Regresar</asp:HyperLink>
            </button>
        </div>
    </form>
    <br />
            <br />
            <br />
    <h5 class="d-flex align-items-center justify-content-center"><asp:Label ID="LabelAlert" runat="server" Text=""></asp:Label> </h5>    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Driver={PostgreSQL ODBC Driver(UNICODE)};server=127.0.0.1;port=5432;database=base1;uid=postgres;pwd=admin" ProviderName="System.Data.Odbc"></asp:SqlDataSource>
</body>
</html>
