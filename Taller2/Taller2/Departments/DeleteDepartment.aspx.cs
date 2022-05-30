using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FixedAssets.Department
{
    public partial class DeleteDepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteCommand = $"delete from departments where name = '{TextBoxName.Text}'";
            int cant = SqlDataSource1.Delete();
            if (cant == 1)
                Label1.Text = "Departamento eliminado!";
            else
                Label1.Text = "No existe departamento con ese nombre ";
            TextBoxName.Text = "";
            LabelNombre.Text = "";
            LabelId.Text = "";
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = $"select * from departments where name='{TextBoxName.Text}'";
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            OdbcDataReader datos = (OdbcDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                TextBoxName.Text = (string)datos["departments"];
                LabelNombre.Text = $"{(string)datos["first_name"]} {(string)datos["last_name"]}"; ;
                LabelId.Text = (string)datos["id"];
            }
            else
                Label1.Text = "No existe un usuario con ese nombre";
        }
    }
}