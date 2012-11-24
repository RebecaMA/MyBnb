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

        ControllerViaje _controllerViaje = new ControllerViaje();

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
        /// Completa la informacion para listar propiedad
        /// Dropdown de tipo propiedad, tipo de hospedaje, localidad, hora entrada, hora salidad
        /// </summary>
        public void llenarListarPropiedad()
        {
            ControllerPropiedades _controllerPropiedad = new ControllerPropiedades();
            DropDownList_Tipo_ListarPropiedad.DataSource = _controllerPropiedad.obtenerTipo("ObtenerTipoPropiedad");
            DropDownList_Tipo_ListarPropiedad.DataBind();
            DropDownList_TipoHospedaje_ListarPropiedad.DataSource = _controllerPropiedad.obtenerTipo("ObtenerTipoHospedaje");
            DropDownList_TipoHospedaje_ListarPropiedad.DataBind();
            DropDownList_Localidad_ListarPropiedad.DataSource = _controllerPropiedad.obtenerTipo("ObtenerLocalidad");
            DropDownList_Localidad_ListarPropiedad.DataBind();
            DropDownList_HoraEntrada_ListarPropiedad.DataSource = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
            DropDownList_HoraEntrada_ListarPropiedad.DataBind();
            DropDownList_HoraSalida_ListarPropiedad.DataSource = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
            DropDownList_HoraSalida_ListarPropiedad.DataBind();      
        }
        /// <summary>
        /// Llena la informacion necesaria para reservar viaje
        /// Obtiene los viajes de usuario
        /// </summary>
        public void llenarSolicitarAnfitrion()
        {
           // DropDownList_Viaje_SolicitarAnfitrion.DataSource = _controllerViaje.obtenerViajesUsuario();
           // DropDownList_Viaje_SolicitarAnfitrion.DataBind();
        }

        public void llenarWishlist()
        {
            ControllerWishList _controllerWishList = new ControllerWishList();
            GridView_WishList.DataSource = _controllerWishList.mostrarWishlist();
            GridView_WishList.DataBind();
            Button_AceptarWishlist.Visible = false;
            Button_RechazarWishist.Visible = false;
            _controllerWishList.obtenerPropiedadesWishList();         

        }

        public void llenarReservarViaje()
        {
            ControllerViaje _controllerViaje = new ControllerViaje();
            DropDownList_Viaje_Propiedades.DataSource = _controllerViaje.obtenerViajesUsuario();
            DropDownList_Viaje_Propiedades.DataBind();
            DropDownList_Viaje_Propiedades.Visible = true;
            Label_Viaje.Visible = true;
            
        }

        /// <summary>
        /// Se encarga de hacer los cambios entre los Taps de la pagina.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MenuTabControl_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(MenuTabControl.SelectedValue); 
            if(index == 1)
            {
                llenarListarPropiedad();
            }
            else if (index == 3)
            {
                llenarReservarViaje();
            }
            else if (index == 4)
            {
                llenarSolicitarAnfitrion();
            }
            else if (index == 5)
            {
                llenarWishlist();
            }
            MultiViewTabControl.ActiveViewIndex = index;
        }

        #region Modificar Usuario

        /// <summary>
        /// Se encarga de desacticar el perfil del usuario.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Desactivar_ModificarUsuario_Click(object sender, EventArgs e)
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            String[] datos = new String[12];
            datos[0] = _controllerUsuario.getLogin();
            datos[1] = TextBox_Login_ModificarUsuario.Text;
            datos[2] = TextBox_Contrasena_ModificarUsuario.Text;
            datos[3] = TextBox_Descripcion_ModificarUsuario.Text;
            datos[4] = TextBox_Nombre_ModificarUsuario.Text;
            datos[5] = TextBox_Apellidos_ModificarUsuario.Text;
            datos[6] = DropDownListAno_modificar.SelectedValue + DropDownListMes_Modificar.SelectedValue + DropDownListDia_Modificar;
            datos[7] = TextBox_Email_ModificarUsuario.Text;
            datos[8] = TextBox_Telefono_ModificarUsuario.Text;
            datos[9] = DropDownList_Genero_ModificarUsuario.SelectedValue.ToString();
            datos[10] = TextBox_Pais_ModificarUsuario.Text;
            datos[11] = "Inactivo";

            _controllerUsuario.modificarUsuario(datos);
        }

        /// <summary>
        /// Se encarga de modificar el perfil del usuario.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Modificar_ModificarUsuario_Click(object sender, EventArgs e)
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            String[] datos = new String[12];
            datos[0] = _controllerUsuario.getLogin();
            datos[1] = TextBox_Login_ModificarUsuario.Text;
            datos[2] = TextBox_Contrasena_ModificarUsuario.Text;
            datos[3] = TextBox_Descripcion_ModificarUsuario.Text;
            datos[4] = TextBox_Nombre_ModificarUsuario.Text;
            datos[5] = TextBox_Apellidos_ModificarUsuario.Text;
            datos[6] = DropDownListAno_modificar.SelectedValue + DropDownListMes_Modificar.SelectedValue + DropDownListDia_Modificar;
            datos[7] = TextBox_Email_ModificarUsuario.Text;
            datos[8] = TextBox_Telefono_ModificarUsuario.Text;
            datos[9] = DropDownList_Genero_ModificarUsuario.SelectedValue.ToString();
            datos[10] = TextBox_Pais_ModificarUsuario.Text;
            datos[11] = "";

            _controllerUsuario.modificarUsuario(datos);

        }

        #endregion
      
        #region Listar Propiedad
        
        /// <summary>
        /// Se encarga de realizar el registro de nuevas propiedades.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Registrar_ListarPropiedad_Click(object sender, EventArgs e)
        {
            ControllerPropiedades _controllerPropiedad = new ControllerPropiedades();
            String[] _datos = new String[12];
            _datos[0] = DropDownList_Tipo_ListarPropiedad.SelectedItem.ToString();
            _datos[1] = TextBox_Capacidad_ListarPropiedad.Text;
            _datos[2] = TextBox_Titulo_ListarPropiedad.Text;
            _datos[3] = TextBox_Descripcion_ListarPropiedad.Text;
            _datos[4] = null;
            _datos[5] = DropDownList_HoraEntrada_ListarPropiedad.SelectedItem.ToString() + " " + DropDownList_TiempoEntrada_ListarPropiedad.SelectedItem.ToString();
            _datos[6] = DropDownList_HoraSalida_ListarPropiedad.SelectedItem.ToString() + " " + DropDownList_TiempoSalida_ListarPropiedad.SelectedItem.ToString();
            _datos[7] = DropDownList_Localidad_ListarPropiedad.SelectedItem.ToString();
            _datos[8] = DropDownList_TipoHospedaje_ListarPropiedad.SelectedItem.ToString();
            _datos[9] = TextBox_PrecioNoche_ListarPropiedad.Text;
            _datos[10] = TextBox_PrecioVolumen_ListarPropiedad.Text;
            _datos[11] = TextBox_CantidadVolumen_ListarPropiedad.Text;
            String retorno = _controllerPropiedad.listarPropiedad(_datos);
            ScriptManager.RegisterStartupScript(this, typeof(string), 
                "Error", "alert("+retorno+");", true); 
            ;               
        }

        protected void Button_Filtrar_Propiedades_Click1(object sender, EventArgs e)
        {
            ControllerPropiedades _propiedades = new ControllerPropiedades();
            _propiedades.obtenerPropiedades("Mostrar Propiedades", null);
            GridView_Propiedades.DataSource = _propiedades.getlistaPropiedades();
            GridView_Propiedades.DataBind();
        }

        #endregion

        #region Crear Viaje

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_CrearViaje_CrearViaje_Click(object sender, EventArgs e)
        {
            ControllerViaje _viaje = new ControllerViaje();
            ControllerUsuario _usuario = new ControllerUsuario();

            String[] _datos = new String[5];
            _datos[0] = DropDownListFEAno_CV.SelectedValue + "/" + DropDownListDEMes_CV.SelectedValue + "/" + DropDownListFEDia_CrearViaje.SelectedValue;
            _datos[1] = DropDownListFSAno_CV.SelectedValue + "/" + DropDownListFSMes_CV.SelectedValue + "/" + DropDownListFSDia_CV.SelectedValue;
            _datos[2] = TextBox_Titulo_CrearViaje.Text;
            _datos[3] = null;
            _datos[4] = _usuario.getLogin();
            
            if (string.IsNullOrEmpty(TextBox_Titulo_CrearViaje.Text))
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Error", "alert(Debe darle un nombre a este viaje);", true);
            }
            else
            {
                string value = "Numero de viaje "+ _viaje.reservarViaje(_datos);
                ScriptManager.RegisterStartupScript(this, typeof(string), "Error", "alert(" + value + ");", true);
               
            }            
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_CrearReservar_CrearViaje_Click(object sender, EventArgs e)
        {
            ControllerViaje _viaje = new ControllerViaje();
            ControllerUsuario _usuario = new ControllerUsuario();
           

            String[] _datos = new String[5];
            _datos[0] = DropDownListFEAno_CV.SelectedValue + "/" + DropDownListDEMes_CV.SelectedValue + "/" + DropDownListFEDia_CrearViaje.SelectedValue;
            _datos[1] = DropDownListFSAno_CV.SelectedValue + "/" + DropDownListFSMes_CV.SelectedValue + "/" + DropDownListFSDia_CV.SelectedValue;
            _datos[2] = TextBox_Titulo_CrearViaje.Text;
            _datos[3] = null;
            _datos[4] = _usuario.getLogin();
            _viaje.setidViaje(_viaje.reservarViaje(_datos));
           // llenarReservarViaje();
            DropDownList_Viaje_Propiedades.Visible = false;
            Label_Viaje.Visible = false;
            MultiViewTabControl.ActiveViewIndex = 3;
           
        }
        /// <summary>
        /// Dispara este método cuando se hace un index de cambio de viaje
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CambioViaje(object sender, EventArgs e)
        {
            ControllerViaje _controllerViaje = new ControllerViaje();
            _controllerViaje.setidViajeIndex(DropDownList_Viaje_Propiedades.SelectedIndex);
        }

        #endregion

        #region Propiedades

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Filtrar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerPropiedades _propiedades = new ControllerPropiedades();
            _propiedades.obtenerPropiedades("Mostrar Propiedades", null);
            GridView_Propiedades.DataSource = _propiedades.getlistaPropiedades();
            GridView_Propiedades.DataBind();
          

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Ver_Propiedades_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GUI/MyBnB_Propiedades.aspx");
        }


        protected void Button_Reservar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerViaje _viaje = new ControllerViaje();
            String[] pdatos = new String[2];
            int index;
            pdatos[0] = DropDownListFIAno_P.SelectedValue+"/"+DropDownListFIMes_P+"/"+ DropDownListFIDia_Propiedades;
            pdatos[1] = DropDownListFFAno_P+"/"+DropDownListFFMes_P+"/"+DropDownListFFDia_P;
            
            index = GridView_Propiedades.SelectedIndex;

            String retorno =_viaje.realizarReservacion(pdatos);

            ScriptManager.RegisterStartupScript(this, typeof(string), "Error", "alert("+retorno+"');", true);

        }

        #endregion

        #region Solicitar Anfitrion

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Solicitar_SolicitarAnfitrion_Click(object sender, EventArgs e)
        {
            
            int viajeSeleccionado = DropDownList_Localidad_SolicitarAnfitrion.SelectedIndex;
            int localidadSeleccionada = DropDownList_Localidad_SolicitarAnfitrion.SelectedIndex;
            if (viajeSeleccionado == -1 || localidadSeleccionada == -1)
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Error", "alert('Datos incompletos');", true);
            }
            else 
            {
                _controllerViaje.solicitarAnfitrion(viajeSeleccionado);
            }            
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_VerRespuestas_SolicitarAnfitrion_Click(object sender, EventArgs e)
        {

        }

        #endregion

        #region Administrar WishList

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_Ver_AdministrarWishList_Click(object sender, EventArgs e)
        {

        }

        protected void Button_AceptarWishlist_Click(object sender, EventArgs e)
        {
            ControllerWishList _wishlist = new ControllerWishList();
            int index = GridView_WishList.SelectedIndex;
            _wishlist.cambiarEstadoRecomendacion(index, "Aceptada");
            llenarWishlist();
        }

        protected void Button_RechazarWishist_Click(object sender, EventArgs e)
        {
            ControllerWishList _wishlist = new ControllerWishList();
            int index = GridView_WishList.SelectedIndex;
            _wishlist.cambiarEstadoRecomendacion(index, "Rechazada");
            llenarWishlist();
        }

        protected void GriedViewSelectionChange(object sender, EventArgs e)
        {
            GridViewRow row = GridView_WishList.SelectedRow;

            if (row.Cells[5].Text.Equals("Espera"))
            {
                Button_AceptarWishlist.Visible = true;
                Button_RechazarWishist.Visible = true;
            }
            else 
            {
                Button_AceptarWishlist.Visible = false;
                Button_RechazarWishist.Visible = false;
            
            }
        }

        #endregion

        protected void Button_Ver_AdministrarWishList_Click1(object sender, EventArgs e)
        {
            ControllerPropiedades _controllerPropiedad = new ControllerPropiedades();
            _controllerPropiedad.setIndex(GridView_WishList.SelectedIndex);
            Response.Redirect("~/GUI/MyBnB_Propiedades.aspx?Tipo=Wishlist");

        }

        protected void GriedViewPropiedades(object sender, EventArgs e)
        {
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            _controllerPropiedades.setIndex(GridView_Propiedades.SelectedIndex);
        }

        protected void Button_VerRespuestas_SolicitarAnfitrion_Click1(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListAno_modificar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}