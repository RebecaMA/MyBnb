using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_Recomendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarUsuarios();
        }

        public void llenarUsuarios()
        { 
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            CheckBoxListUsuarios.DataSource = _controllerUsuario.seleccionarUsuario();
            CheckBoxListUsuarios.DataBind();
        }
    }
}