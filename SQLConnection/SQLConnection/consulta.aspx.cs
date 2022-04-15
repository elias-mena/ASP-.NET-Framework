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
    public partial class consulta : System.Web.UI.Page
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
            */

            // Postgres
            NpgsqlConnection conexion = new NpgsqlConnection(s);
            conexion.Open();

            string query = $"select nombre, clave, mail from usuarios where nombre='{TextBoxNombre.Text}'";
            NpgsqlCommand conector = new NpgsqlCommand(query, conexion);
            NpgsqlDataAdapter datos = new NpgsqlDataAdapter(conector);
            DataTable tabla = new DataTable();
            datos.Fill(tabla);

            if (tabla.Rows.Count>0)
            {
                DataRow row = tabla.Rows[0];
                Label1.Text = $"Clave: {row[1]} <br> Mail: {row[2]}";
            }
            else
            {
                Label1.Text = "No existe un usuario con ese nombre";
            }
            conexion.Close();
        }
    }
}