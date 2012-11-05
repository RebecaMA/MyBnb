using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_Login: System.Web.UI.Page
    {
        ControllerUsuario _controllerUsuario;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Registrarse_Click(object sender, EventArgs e)
        {
            String login = TextBox_RegistrarNombreUsuario.Text;
            String contraseña = TextBox_RegistrarContraseña.Text;
            String verificar = TextBox_verificarContraseña.Text;

            if (contraseña.Equals(verificar))
            {
                _controllerUsuario = new ControllerUsuario(login, contraseña);
                Response.Redirect("http://localhost:51088/GUI/MyBnB_Register.aspx");
            }
            else //Label de error
            {
                LabelError.Text = "Contraseñas no coinciden";
            }
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
           String login = TextBox_NombreUsuario.Text;
            String contraseña = TextBox_Contraseña.Text;
            _controllerUsuario = new ControllerUsuario(login, contraseña);
            LabelError.Text = _controllerUsuario.autentificarUsuario();

        }
    }
}