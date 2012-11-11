using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_Viajero : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                MultiViewTabControl.ActiveViewIndex = 0;
            }
        }

        /// <summary>
        /// Se encarga de hacer los cambios entre los Taps de la pagina.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MenuTabControl_MenuItemClick(object sender, MenuEventArgs e)
        {
            MultiViewTabControl.ActiveViewIndex = Int32.Parse(MenuTabControl.SelectedValue);
        }

        #region Modificar Usuario

        /// <summary>
        /// Se encarga de modificar el perfil del usuario.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Modificar_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Se encarga de desacticar el perfil del usuario.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Desactivar_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Se encarga de cerrar sesion del usuario.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_LogOut_Click(object sender, EventArgs e)
        {

        }   

        #endregion

        #region Listar Propiedad

        #endregion

        #region Listar Propiedad
        
        #endregion

        #region Reservar Viaje

        #endregion

        #region Solicitar Anfitrion

        #endregion

        #region Administrar WishList

        #endregion
    }
}