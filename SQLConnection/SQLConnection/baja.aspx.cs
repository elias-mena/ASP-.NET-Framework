using Npgsql;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLConnection
{
    public partial class baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion"].ConnectionString;
            /* SQL Server
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand($"delete from usuarios where nombre ={TextBoxNombre.Text}", conexion);
            */

            // Postgres

            NpgsqlConnection conexion = new NpgsqlConnection(s);
            conexion.Open();

            string query = $"delete from usuarios where nombre='{TextBoxNombre.Text}'";
            NpgsqlCommand comando = new NpgsqlCommand(query, conexion);


            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
            {
                Label1.Text = "Se borró el usuario";
            }
            else
            {
                Label1.Text = "No existe un usuario con dicho nombre";
            }
            conexion.Close();
        }
    }
}