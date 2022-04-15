using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace SQLConnection
{
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonInsertar_Click(object sender, EventArgs e)
        {
            // String de la conexión desde web.config
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion"].ConnectionString;
            
            /*  SQL Server

            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into usuarios(nombre,clave,mail) " +
                $"values('{TextBoxNombre.Text}','{TextBoxClave.Text}','{TextBoxMail.Text}')", conexion);
            comando.ExecuteNonQuery();
            */

            // Postgres

            NpgsqlConnection conexion = new NpgsqlConnection(s);
            conexion.Open();

            string query = "insert into usuarios(nombre,clave,mail) " +
                $"values('{TextBoxNombre.Text}','{TextBoxClave.Text}','{TextBoxMail.Text}')";
            NpgsqlCommand comando = new NpgsqlCommand(query, conexion);
            comando.ExecuteNonQuery();

            Label1.Text = "Se registró el usuario";
            conexion.Close();


        }
    }
}