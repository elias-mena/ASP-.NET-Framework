<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Taller2.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <style>
        body{
            background-color:beige;
        }
        a{
            text-decoration: none;
            color: white;
        }
        input{
            max-width:350px;
        }
        select{
            max-width:350px;
        }
        button{
            max-width:350px;
        }

    </style>
    <title>Modificar Alumno</title>
</head>
<body>
    <h2 class="m-4 d-flex align-items-center justify-content-center">Modificar Alumno</h2>
        <form id="form1" runat="server" class="mt-5 d-flex flex-row">
            <div class="container d-flex align-items-center justify-content-center">
                <div class="container-fluid d-flex flex-column">
                <h4>Buscar el Alumno</h4>
                <label for="TextBoxCode" class="sr-only">Ingrese el Código del Alumno</label>
                <asp:TextBox ID="TextBoxCode" runat="server" placeholder="Código" CssClass="form-control" required autofocus></asp:TextBox>
                <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" CssClass="btn btn-lg btn-primary mt-2" OnClick="ButtonBuscar_Click"/>
    
                <label class="sr-only mt-1">Información del Alumno</label>
                <div class="card" style="width: 18rem;">
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item">Nombre: <asp:Label ID="LabelNombre" runat="server" Text=""></asp:Label></li>
                    <li class="list-group-item">Provincia: <asp:Label ID="LabelProvincia" runat="server" Text=""></asp:Label></li>
                  </ul>
              </div>
        </div>

        <div class="container-fluid d-flex flex-column">
            <h4>Modificar el Alumno</h4>

            <label for="TextBoxNombre" class="sr-only">Nombre Completo</label>
            <asp:TextBox ID="TextBoxNombre" runat="server" placeholder="Nombre Completo" CssClass="form-control" autofocus></asp:TextBox>
  
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
            <asp:Button ID="ButtonModificar" runat="server" Text="Modificar" CssClass="btn btn-lg btn-primary mt-2" OnClick="ButtonModificar_Click"/>
            <button type="button" class="btn btn-lg btn-secondary btn-block mt-2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/actions.aspx">Regresar</asp:HyperLink>
            </button>
        </div>
            </div>
            <p>
                &nbsp;</p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Driver={PostgreSQL ODBC Driver(UNICODE)};server=127.0.0.1;port=5432;database=base1;uid=postgres;pwd=admin" ProviderName="System.Data.Odbc"></asp:SqlDataSource>
        </form>
    
            <br />
            <br />
            <h4 class="d-flex align-items-center justify-content-center"><asp:Label ID="LabelAlert" runat="server" Text=""></asp:Label> </h4>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

        </body>
</html>
