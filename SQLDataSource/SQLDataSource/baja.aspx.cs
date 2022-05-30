using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLDataSource
{
    public partial class baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteCommand = $"delete from usuarios where nombre = '{TextBoxNombre.Text}'";
            int cant = SqlDataSource1.Delete();
            if (cant == 1)
                Label1.Text = "Usuario eliminado!";
            else
                Label1.Text = "No existe usuario con ese nombre ";
        }
    }
}