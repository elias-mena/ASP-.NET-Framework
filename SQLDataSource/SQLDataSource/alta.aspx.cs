using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLDataSource
{
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonInsertar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommand = $"insert into usuarios values ('{TextBoxNombre.Text}','{TextBoxClave.Text}','{TextBoxMail.Text}')";
            SqlDataSource1.Insert();
            Label1.Text = "Usuario insertado!";
            TextBoxNombre.Text = "";
            TextBoxClave.Text = "";
            TextBoxMail.Text = "";
        }
    }
}