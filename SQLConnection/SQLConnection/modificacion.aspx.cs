using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQLConnection
{
    public partial class modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion"].ConnectionString;
            /* SQL Server
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select nombre, clave, mail from usuarios" +
                $"where nombre='{TextBoxNombre.Text}'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                TextBoxClave.Text = registro["clave"].ToString();
                TextBoxMail.Text = registro["mail"].ToString();
            }
            else
            {
                Label1.Text = "No existe un usuario con ese nombre";
            }
            */

            // Postgres
            NpgsqlConnection conexion = new NpgsqlConnection(s);
            conexion.Open();

            string query = $"select nombre, clave, mail from usuarios where nombre='{TextBoxNombre.Text}'";
            NpgsqlCommand conector = new NpgsqlCommand(query, conexion);
            NpgsqlDataAdapter datos = new NpgsqlDataAdapter(conector);
            DataTable tabla = new DataTable();
            datos.Fill(tabla);

            if (tabla.Rows.Count > 0)
            {
                DataRow row = tabla.Rows[0];
                TextBoxClave.Text = row[1].ToString();
                TextBoxMail.Text = row[2].ToString();
            }
            else
                Label1.Text = "No existe un usuario con ese nombre";

            conexion.Close();
        }

        protected void ButtonModificar_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion"].ConnectionString;
            /* SQL Server
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand($"update usuarios set clave='{TextBoxClave.Text}', mail='{TextBoxMail.Text}'" +
                $"where nombre='{TextBoxNombre.Text}'", conexion);
            */
            NpgsqlConnection conexion = new NpgsqlConnection(s);
            conexion.Open();

            string query = $"update usuarios set clave='{TextBoxClave.Text}', mail='{TextBoxMail.Text}'" +
                $"where nombre='{TextBoxNombre.Text}'";
            NpgsqlCommand comando = new NpgsqlCommand(query, conexion);

            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)            
                Label2.Text = "Datos modificados";            
            else            
                Label2.Text = "No existe el usuario";

            conexion.Close();
        }
    }
}