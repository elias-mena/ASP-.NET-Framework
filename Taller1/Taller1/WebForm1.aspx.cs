using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBoxAccept.Checked)
            {
                string password = TxtPassword.Text;
                if(TxtConfirmPasswor.Text == password)
                {
                    string username = TxtUser.Text;
                    string email = TxtEmail.Text;
                    string lastName = TxtLastname.Text;
                    string firstName = TxtFirstName.Text;
                    string country = DropDownCountry.SelectedItem.Text;
                    string province = TxtProvincia.Text;
                    string postcode = TxtPostCode.Text;
                    string gender = "";
                    if (RadioBtnMale.Checked)
                    {
                        gender = RadioBtnMale.Text;
                    }
                    if (RadioBtnMale.Checked)
                    {
                        gender = RadioBtnFemale.Text;
                    }
                    string birthday = TxtBirthDate.Text;
                    string comments = TxtComments.Text;

                    
                }
                else
                {
                   // Console.WriteLine("Contraseña incorrecta");
                }
            }
            else
            {
                //Console.WriteLine("Debe aceptar los términos");
            }
        }

    }
}