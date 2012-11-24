using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_Register : System.Web.UI.Page
    {
        ControllerUsuario _controllerUsuario = new ControllerUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
                      
        }
        
        protected void Button_Registrarse_Click(object sender, EventArgs e)
        {
             String[] _datos = new String[12];
             _datos[0] = TextBox_Nombre.Text;
             _datos[1] = TextBox_Apellido.Text;
             _datos[2] = DropDownListA_R.SelectedValue + DropDownListMes_R + DropDownListDia_R;
             _datos[3] = TextBox_Email.Text;
             _datos[4] = TextBox_Telefono.Text;
             _datos[5] = DropDownList_Genero.SelectedValue;
             _datos[6] = TextBox_Pais.Text;
             _datos[7] = _controllerUsuario.getLogin();
             _datos[8] = _controllerUsuario.getContraseña();
             _datos[9] = DateTime.Today.Year + "/"+ DateTime.Today.Day + "/" + DateTime.Today.Month+" " +DateTime.Today.Hour + ":00:00";
             _datos[10] = TextBox_Descripcion.Text;
             _datos[11] = _controllerUsuario.getTipoUsuairo();
            
             _controllerUsuario.registrarUsuario(_datos);
             Response.Redirect("http://localhost:51088/GUI/MyBnB_Viajero.aspx"); 
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}