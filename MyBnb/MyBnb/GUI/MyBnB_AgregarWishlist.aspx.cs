using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_AgregarWishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                llenarPrioridad();
            }
        }

        protected void Button_Desactivar_ModificarUsuario_Click(object sender, EventArgs e)
        {
            ControllerWishList _controllerWishlist = new ControllerWishList();   
            String prioridad = DropDownList_Prioridad_AgregarWishlist.SelectedValue;
            _controllerWishlist.ingresarWishlist(prioridad);
   
        }

        public void llenarPrioridad()
        {
            ControllerWishList _controllerWishlist = new ControllerWishList();
            DropDownList_Prioridad_AgregarWishlist.DataSource = _controllerWishlist.obtenerPrioridad();
            DropDownList_Prioridad_AgregarWishlist.DataBind();
        }

     
    }
}