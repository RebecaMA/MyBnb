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
            if (!this.IsPostBack)
            {
                llenarUsuarios();
            }
            
        }

        public void llenarUsuarios()
        { 
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            RadioButtonUsuarios.DataSource = _controllerUsuario.seleccionarUsuario();
            RadioButtonUsuarios.DataBind();
        }

        protected void Button_Recomendar_Click(object sender, EventArgs e)
        {
            ControllerPropiedades _controllerPropiedad = new ControllerPropiedades(true);
            String ploginRecomendado = RadioButtonUsuarios.SelectedValue;
            _controllerPropiedad.realizarRecomendacion(ploginRecomendado);

        }
    }
}