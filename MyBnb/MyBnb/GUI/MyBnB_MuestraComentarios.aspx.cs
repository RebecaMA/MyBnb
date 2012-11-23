using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_RealizarComentario : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarComentarios();
        }

        /// <summary>
        /// Mostrar en pantalla los comentarios realizados para esta propiedad.
        /// </summary>
        protected void LlenarComentarios()
        {
            ControllerComentario _controllerComentario = new ControllerComentario();
            GridViewComentarios.DataSource = _controllerComentario.obtenerComentariosPropiedad();
            GridViewComentarios.DataBind();

        }

        protected void Button_Comentar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GUI/MyBnB_Propiedades.aspx");
        }


    }
}