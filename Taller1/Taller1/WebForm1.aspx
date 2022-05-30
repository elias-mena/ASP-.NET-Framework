<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Taller1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            width: 362px;
            margin-top: 0px;
        }
        #Text1 {
            height: 182px;
            width: 313px;
            margin-top: 0px;
        }
        #TextComments {
            height: 170px;
            width: 266px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nombre de usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TxtUser" runat="server" Width="271px"></asp:TextBox>
            <br />
            <br />
            Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtPassword" runat="server" Width="267px"></asp:TextBox>
            <br />
            <br />
            Repita la clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtConfirmPasswor" runat="server" Width="271px"></asp:TextBox>
            <br />
            <br />
            Correo electrónico:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEmail" runat="server" Width="266px"></asp:TextBox>
            <br />
            <br />
            Apellido:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtLastname" runat="server" Width="263px"></asp:TextBox>
            <br />
            <br />
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtFirstName" runat="server" Width="260px"></asp:TextBox>
            <br />
            <br />
            Pais de origen:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownCountry" runat="server">
                <asp:ListItem>Costa Rica</asp:ListItem>
                <asp:ListItem>Argentina</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Provincia:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtProvincia" runat="server" Width="258px"></asp:TextBox>
            <br />
            <br />
            Código Postal:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtPostCode" runat="server" Width="260px"></asp:TextBox>
            <br />
            <br />
            Sexo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioBtnMale" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Hombre" />
&nbsp;<asp:RadioButton ID="RadioBtnFemale" runat="server" Text="Mujer" />
            <br />
            <br />Fecha de nacimiento:&nbsp;
            <asp:TextBox ID="TxtBirthDate" runat="server" Width="265px"></asp:TextBox>
            <br />
            <br />
            <br />
            Comentarios:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtComments" runat="server" Height="136px" Width="263px"></asp:TextBox><br />
            <br />
            Acepto los términos&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBoxAccept" runat="server" Text="Acepto" OnCheckedChanged="CheckBoxAccept_CheckedChanged" />
            <br />
            y condiciones<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnAccept" runat="server" Text="Aceptar" OnClick="Button1_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
