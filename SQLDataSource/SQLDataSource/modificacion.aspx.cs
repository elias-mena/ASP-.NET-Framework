using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLDataSource
{
    public partial class modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = $"select * from usuarios where nombre='{TextBoxNombre.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            
            if (datos.Read())            
                Label1.Text = $"Clave: {datos["clave"]} <br> Mail: {datos["mail"]}";            
            else            
                Label1.Text = "No existe un usuario con ese nombre";            
        }

        protected void ButtonModificar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateCommand = $"update usuarios set clave='{TextBoxClave.Text}', mail='{TextBoxMail.Text}'" +
                $"where nombre='{TextBoxNombre.Text}'";
            int cant = SqlDataSource1.Update();
            if (cant == 1)
                Label2.Text = "Se modificaron los datos!";
            else
                Label2.Text = "No existe usuario con ese nombre ";
        }

    }
}