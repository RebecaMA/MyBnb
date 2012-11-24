using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Indice"] != null)
            {
                MultiViewTabControl.ActiveViewIndex = int.Parse(Request.QueryString["Indice"]);
                if (int.Parse(Request.QueryString["Indice"]) == 4)
                {
                    //
                }

            }
            if (!IsPostBack)
            {


            }

        }

        /// <summary>
        /// Se encarga de hacer los cambios entre los Taps de la pagina.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MenuTabControl_MenuItemClick(object sender, MenuEventArgs e)
        {

            int index = Int32.Parse(MenuTabControl.SelectedValue);
            if (index == 1)
            {
                
            }
            else if (index == 3)
            {
                
            }
            else if (index == 4)
            {
                
            }
            else if (index == 5)
            {
                
            }
            MultiViewTabControl.ActiveViewIndex = index;
        }

        protected void Button_CrearCategoria_Click(object sender, EventArgs e)
        {
            ControllerAdministrador _controllerAdministrador = new ControllerAdministrador();
            String categoria = TextBox_NombreCategoria.Text;
            String descripcion = TextBox_DescripcionCategoria.Text;
            _controllerAdministrador.crearCategoria(categoria,descripcion);


        }

        protected void Button_Filtrar_Propiedades_Click1(object sender, EventArgs e)
        {

        }

        protected void Button_CrearListaRecomendacion_Click(object sender, EventArgs e)
        {

        }

        protected void Button_Ver_Propiedades_Click(object sender, EventArgs e)
        {

        }

        protected void GriedViewPropiedades(object sender, EventArgs e)
        {

        }

        //protected void Button_Desactivar_ModificarUsuario_Click(object sender, EventArgs e)
        //{
        //    ControllerWishList _controllerWishlist = new ControllerWishList();
        //    String prioridad = DropDownList_Prioridad_AgregarWishlist.SelectedValue;
        //    _controllerWishlist.ingresarWishlist(prioridad);

        //}

        //public void llenarPrioridad()
        //{
        //    ControllerWishList _controllerWishlist = new ControllerWishList();
        //    DropDownList_Prioridad_AgregarWishlist.DataSource = _controllerWishlist.obtenerPrioridad();
        //    DropDownList_Prioridad_AgregarWishlist.DataBind();
        //}

     
    }
}