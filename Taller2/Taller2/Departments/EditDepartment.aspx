<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDepartments.aspx.cs" Inherits="FixedAssets.Departments.EditDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <!-- Bootstrap CSS -->
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
    <title>Departamento</title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div class="container-fluid">
                    
                        <div class="modal-dialog" style="width: 700px">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">
                                Información del Departamento: 
                            </h5>
                            </div>
                            <div class="modal-body d-flex">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    
                                    <label for="TextBoxName" class="sr-only">Nombre de Departamento</label>
                                    <asp:TextBox
                                        ID="TextBoxName" runat="server" CssClass="form-control" 
                                        placeholder="Nombre de Departamento" required />
                                        <asp:Button ID="ButtonSearch" runat="server" Text="Button" OnClick="ButtonSearch_Click" CssClass="btn btn-primary mt-2"/>
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </li>
                                
                                <li class="list-group-item">
                                    
                                    <label for="TextBoxId" class="sr-only">ID</label>
                                    <asp:TextBox
                                        ID="TextBoxId" runat="server" CssClass="form-control" 
                                        placeholder="ID" required />
                                        <asp:Button ID="ButtonSearch" runat="server" Text="Button" OnClick="ButtonSearch_Click" CssClass="btn btn-primary mt-2"/>
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </li>    
                                
                                <li class="list-group-item">
                                    
                                    <label for="TextBoxDescription" class="sr-only">Descripción</label>
                                    <asp:TextBox
                                        ID="TextBoxDescription" runat="server" CssClass="form-control" 
                                        placeholder="Descripción" required />
                                        <asp:Button ID="ButtonSearch" runat="server" Text="Button" OnClick="ButtonSearch_Click" CssClass="btn btn-primary mt-2"/>
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </li>  
                                
                                    
                            </ul>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="ButtonSave" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="ButtonSave_Click"/>
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
