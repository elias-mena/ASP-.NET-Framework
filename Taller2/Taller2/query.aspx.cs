using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller2
{
    public partial class query : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = $"select * from alumnos where codigo='{TextBoxCode.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                LabelNombre.Text = (string) datos["nombrecompleto"];
                LabelProvincia.Text = (string) datos["provincia"];
            }
            else
                LabelAlert.Text = "No existe un usuario con ese código";
        }
    }
}