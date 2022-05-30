<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="query.aspx.cs" Inherits="Taller2.query" %>

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
    </style>
    <title>Consultar Alumno</title>
</head>
<body>
    <div class="container-fluid d-flex align-items-center justify-content-center flex-column">
    <form id="form1" runat="server" class="mt-5">
        
            <h2 class="mb-5">Consultar Alumno</h2>

            <label for="TextBoxCode" class="sr-only">Ingrese el Código del Alumno</label>
            <asp:TextBox ID="TextBoxCode" runat="server" placeholder="Código" CssClass="form-control" required autofocus></asp:TextBox>
            <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" CssClass="btn btn-lg btn-primary btn-block mt-2 mb-2" OnClick="ButtonBuscar_Click"/>
            <div>
               <label for="car" class="sr-only">Información del Alumno</label>
              <div class="card" style="width: 18rem;">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Nombre: <asp:Label ID="LabelNombre" runat="server" Text=""></asp:Label></li>
                <li class="list-group-item">Provincia: <asp:Label ID="LabelProvincia" runat="server" Text=""></asp:Label></li>
              </ul>
            </div>
          </div>
        <button type="button" class="btn btn-lg btn-secondary btn-block mt-2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/actions.aspx">Regresar</asp:HyperLink>
        </button>
    </form>
    
    </div>
                <br />
            <br />
            <h5 class="d-flex align-items-center justify-content-center"><asp:Label ID="LabelAlert" runat="server" Text=""></asp:Label> </h5>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Driver={PostgreSQL ODBC Driver(UNICODE)};server=127.0.0.1;port=5432;database=base1;uid=postgres;pwd=admin" ProviderName="System.Data.Odbc"></asp:SqlDataSource>
</body>
</html>
