<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actions.aspx.cs" Inherits="Taller2.actions" %>

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
    <title>Acciones</title>
</head>
  <body>
      <div class="container-fluid d-flex align-items-center justify-content-center mt-5">
        <button type="button" class="btn btn-success m-2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/insert.aspx">Agregar Alumno</asp:HyperLink>
        </button>

        <button type="button" class="btn btn-primary m-2">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/query.aspx">Consultar Alumnos</asp:HyperLink>
        </button>

        <button type="button" class="btn btn-warning m-2">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/update.aspx">Modificar Alumno</asp:HyperLink>
        </button>

        <button type="button" class="btn btn-danger m-2">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/delete.aspx">Eliminar Alumno</asp:HyperLink>
        </button>
      </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>
