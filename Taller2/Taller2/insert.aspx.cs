using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller2
{
    public partial class insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommand = $"insert into alumnos values ('{TextBoxCode.Text}','{TextBoxNombre.Text}','{DropDownListProvincia.SelectedValue}')";
            SqlDataSource1.Insert();
            LabelAlert.Text = $"Alumno Agregado!";
            TextBoxCode.Text = "";
            TextBoxNombre.Text = "";
        }
    }
}