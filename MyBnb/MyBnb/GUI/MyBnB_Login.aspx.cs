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
            String login = TextBox_Usuario_Registrarse.Text;
            String contraseña = TextBox_Contraseña_Registrarse.Text;
            String verificar = TextBox_VerificarContraseña_Registrarse.Text;
            String tipoUsuario = DropDownTipoLogin.SelectedItem.ToString();

            if (contraseña.Equals(verificar))
            {
                _controllerUsuario = new ControllerUsuario(login, contraseña,tipoUsuario);
                Response.Redirect("http://localhost:51088/GUI/MyBnB_Register.aspx");
            }
            else //Label de error
            {
                LabelError.Text = "Contraseñas no coinciden";                
            }
        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
           String login = TextBox_Usuario.Text;
            String contraseña = TextBox_Contraseña.Text;
            String resultado;
            _controllerUsuario = new ControllerUsuario(login, contraseña);
            
            resultado = _controllerUsuario.autentificarUsuario();
            if (resultado.Equals("Viajero"))
            {
                _controllerUsuario.setLogin(login);
                Response.Redirect("http://localhost:51088/GUI/MyBnB_Viajero.aspx"); 
            }

        }

    
    }
}