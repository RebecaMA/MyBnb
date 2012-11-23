using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_PropiedadesAdministrador : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            colocarPropiedad();
        }

        public void colocarPropiedad()
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            LlenarDatosPropiedadAdministrador(_controllerPropiedades.obtenerPropiedad());            

        }

        public void LlenarDatosPropiedadAdministrador(String[] pdatos)
        {
            Label_PTituloAdministrador.Text = pdatos[0];
            Label_PLocalidadAdministrador.Text = pdatos[1];
            Label_PDescripcionAdministrador.Text = pdatos[2];
            Label_PTipoAdministrador.Text = pdatos[3];
            Label_PHospedajeAdministrador.Text = pdatos[4];
            Label_PCapacidadAdministrador.Text = pdatos[5];
            Label_PHoraEntradaAdministrador.Text = pdatos[6];
            Label_PHoraSalidaAdministrador.Text = pdatos[7];
            Label_PPrecioNocheAdministrador.Text = pdatos[8];
            Label_PPrecioVolumenAdministrador.Text = pdatos[9];
            Label_PNochesMinimaAdministrador.Text = pdatos[10];
        }

        protected void Button_Agregar_PropiedadesAdministrador_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButtonSiguienteAdministrador_Click(object sender, ImageClickEventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            LlenarDatosPropiedadAdministrador(_controllerPropiedades.obtenerPropiedad("sig"));
        }

        protected void ImageButtonAnteriorAdministrador_Click(object sender, ImageClickEventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            LlenarDatosPropiedadAdministrador(_controllerPropiedades.obtenerPropiedad("ant"));
        }
    }
}