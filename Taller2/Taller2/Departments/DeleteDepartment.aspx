<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteDepartments.aspx.cs" Inherits="FixedAssets.Departments.DeleteDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Bootstrap Icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" href="../Content/styles.css"/>
    <title>Delete Departments</title>
</head>
<body>
        
    <form id="form1" runat="server">
        <div class="container-fluid">
                    
            <div class="modal-dialog" style="width: 700px">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">
                    Información del Usuario: 
                </h5>
                </div>
                <div class="modal-body d-flex">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                    <label for="TextBoxId" class="sr-only">ID:

                    </label>
                    <br />
                    <asp:Label ID="LabelID" runat="server" Text="Label"></asp:Label>
                                
                </li>
                
                <li class="list-group-item">
                    <label for="TextBoxName" class="sr-only">Nombre:

                    </label>
                    <br />
                    <asp:Label ID="LabelNombre" runat="server" Text="Label"></asp:Label>
                                
                </li> 

                <li class="list-group-item">
                    <label for="TextBoxDescription" class="sr-only">Descripción:

                    </label>
                    <br />
                    <asp:Label ID="LabelDescripción" runat="server" Text="Label"></asp:Label>
                                
                </li> 
                            
                </ul>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="ButtonDelete" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="ButtonDelete_Click"/>
                <button type="button" class="btn btn-secondary">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Admin.aspx">Volver</asp:HyperLink>
 
                </button>
                </div>
            </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgresConnectionString %>" ProviderName="<%$ ConnectionStrings:PostgresConnectionString.ProviderName %>"></asp:SqlDataSource>
    </form>
</body>
</html>
