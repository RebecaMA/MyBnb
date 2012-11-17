using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_Propiedades : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            colocarPropiedad();
        }

        public void colocarPropiedad()
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades(true);
            llenarDatosPropiedad(_controllerPropiedades.obtenerPropiedad());
            llenarComentarios();

        }

        protected void ImageButtonSiguiente_Click(object sender, ImageClickEventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades(true);
            llenarDatosPropiedad(_controllerPropiedades.obtenerPropiedad("sig"));
            llenarComentarios();
        }

        protected void ImageButtonAnterior_Click(object sender, ImageClickEventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades(true);
            llenarDatosPropiedad(_controllerPropiedades.obtenerPropiedad("ant"));
            llenarComentarios();
        }



        public void llenarDatosPropiedad(String[] pdatos)
        {
            Label_PTitulo.Text = pdatos[0];
            Label_PLocalidad.Text = pdatos[1];
            Label_PDescripcion.Text = pdatos[2];
            Label_PTipo.Text = pdatos[3];
            Label_PHospedaje.Text = pdatos[4];
            Label_PCapacidad.Text = pdatos[5];
            Label_PHoraE.Text = pdatos[6];
            Label_PHoraSalida.Text = pdatos[7];
            Label_PPrecioNoche.Text = pdatos[8];
            Label_PPrecioVolumen.Text = pdatos[9];
            Label_PNochesMinima.Text = pdatos[10];
        }

        public void llenarComentarios()
        {
            ControllerComentario _controllerComentario = new ControllerComentario();
            GridViewComentarios.DataSource = _controllerComentario.obtenerComentariosPropiedad();
            GridViewComentarios.DataBind();

        }
        protected void Button_Reservar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades(true);
            int index = _controllerPropiedades.getIndex();
            //Response.Redirect("http://localhost:51088/GUI/MyBnB_Viajero.aspx?Indice = 3 & idPropiedad ="+index+");
            Response.Redirect("~/GUI/MyBnB_Viajero.aspx?Indice=3&idPropiedad=" + index);
            //  Response.Redirect("~/GUI/MyBnB_Viajero.aspx"); 
        }

        protected void Button_Comentar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerComentario _controllerComentario = new ControllerComentario();
            if (_controllerComentario.verificarReservacion())
                Response.Redirect("~/GUI/MyBnB_RealizarComentario.aspx");
            else // MostrarError
            { }
        }



    }
}