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
            llenarDatosGenerales();
        }

        /// <summary>
        /// Se encarga de colocar propiedades en pantalla
        /// </summary>
        public void colocarPropiedad()
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            llenarDatosPropiedad(_controllerPropiedades.obtenerPropiedad());            

        }

        /// <summary>
        /// Se encarga de llenar datos del usuario y el wishlist
        /// </summary>
        public void llenarDatosGenerales() 
        {
            ControllerWishList _controllerWishlist = new ControllerWishList();
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            DropDownList_Prioridad_AgregarWishlist.DataSource = _controllerWishlist.obtenerPrioridad();
            DropDownList_Prioridad_AgregarWishlist.DataBind();
            DropDownList_Usuario.DataSource = _controllerUsuario.seleccionarUsuario();
            DropDownList_Usuario.DataBind();
        }

        /// <summary>
        /// Boton siquiente
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ImageButtonSiguiente_Click(object sender, ImageClickEventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            llenarDatosPropiedad(_controllerPropiedades.obtenerPropiedad("sig"));            
        }

        /// <summary>
        /// Boton anterior
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ImageButtonAnterior_Click(object sender, ImageClickEventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            llenarDatosPropiedad(_controllerPropiedades.obtenerPropiedad("ant"));            
        }

        /// <summary>
        /// Se encarga de llenar los datos de las propiedades
        /// </summary>
        /// <param name="pdatos"></param>
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

        protected void Button_Reservar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            int index = _controllerPropiedades.getIndex();
            //Response.Redirect("http://localhost:51088/GUI/MyBnB_Viajero.aspx?Indice = 3 & idPropiedad ="+index+");
            Response.Redirect("~/GUI/MyBnB_Viajero.aspx?Indice=3");
            //  Response.Redirect("~/GUI/MyBnB_Viajero.aspx"); 
        }

        protected void Button_Comentar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerComentario _controllerComentario = new ControllerComentario();
            if (_controllerComentario.verificarReservacion())
            {                
                int indexRanking = int.Parse(RadioButtonListRanking.SelectedValue.ToString());

                _controllerComentario.realizarComentario(indexRanking, TextBoxComentario.Text);                
            }
            else // MostrarError
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Error", "alert('Unicamente puede comentar las propiedades que ya visito.');", true);
            }
            
        }

        protected void Button_Recomendar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerWishList _controllerWishlist = new ControllerWishList();
            String ploginRecomendado = DropDownList_Usuario.SelectedValue;
            _controllerWishlist.realizarRecomendacion(ploginRecomendado);
        }

        protected void Button_Wishlist_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerWishList _controllerWishlist = new ControllerWishList();
            String prioridad = DropDownList_Prioridad_AgregarWishlist.SelectedValue;
            _controllerWishlist.ingresarWishlist(prioridad);
        }

        protected void Button_Comentar_TodosComentarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GUI/MyBnB_MuestraComentarios.aspx");
        }



    }
}