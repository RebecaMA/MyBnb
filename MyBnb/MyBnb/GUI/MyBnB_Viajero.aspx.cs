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
        ControllerPropiedades _controllerPropiedad = new ControllerPropiedades();
        ControllerViaje _controllerViaje = new ControllerViaje();
        private int idPropiedad;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Indice"] != null)
            {
                idPropiedad = int.Parse(Request.QueryString["idPropiedad"]);
                MultiViewTabControl.ActiveViewIndex = int.Parse(Request.QueryString["Indice"]);

            }

            if (!IsPostBack) 
            {
                MultiViewTabControl.ActiveViewIndex = 0;
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
                DropDownList_Viaje_SolicitarAnfitrion.DataSource = _controllerViaje.obtenerViajesUsuario();
                DropDownList_Viaje_SolicitarAnfitrion.DataBind();
                idPropiedad = -1;
                // Reservar 
                //DropDownList_Localidad_Reservar.DataSource = _controllerPropiedad.obtenerTipo("ObtenerLocalidad");
                //DropDownList_Localidad_Reservar.DataBind();

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
            datos[6] = "";
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
            //String[] _nombreparametros = new String[12] {"@pusuario","@plogin","@ppassword","@descripcion","@pnombre",
            //                                            "@papellido","@pfechaNacimiento","@pemail","@ptelefono","@pgenero","@ppais","@pestadoUsuario" };
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            String[] datos = new String[12];
            datos[0] = _controllerUsuario.getLogin();
            datos[1] = TextBox_Login_ModificarUsuario.Text;
            datos[2] = TextBox_Contrasena_ModificarUsuario.Text;
            datos[3] = TextBox_Descripcion_ModificarUsuario.Text;
            datos[4] = TextBox_Nombre_ModificarUsuario.Text;
            datos[5] = TextBox_Apellidos_ModificarUsuario.Text;
            datos[6] = "";
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
            //{"@pTipoPropiedad","@pcantidadMaximaPersonas","@pTitulo","@pdescripcion","@pfoto","@phoraEntrada",
            //    "@pHoraSalida","@pCodigoLocalidad","@pTipoHospedaje","@pprecioPorNoche","@pprecioVolumen","@pcantidadMinimaNoches"};

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

           TextBox_Titulo_ListarPropiedad.Text =  _controllerPropiedad.listarPropiedad(_datos);               
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
            _datos[0] = "2012/11/05";
            _datos[1] = "2012/12/05";
            _datos[2] = TextBox_Titulo_CrearViaje.Text;
            _datos[3] = "SCLU Chile Santiago Santiago";//esto no debe estar
            _datos[4] = _usuario.getLogin();
            
            if (string.IsNullOrEmpty(TextBox_Titulo_CrearViaje.Text))
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Error", "alert(Debe darle un nombre a este viaje);", true);
            }
            else
            {
                string value = Request.Form["Calendar_CrearViaje"];
                ScriptManager.RegisterStartupScript(this, typeof(string), "Error", "alert(" + value + ");", true);
                _viaje.reservarViaje(_datos);
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
            _datos[0] = "2012/12/05";
            _datos[1] = "2012/12/05";
            _datos[2] = TextBox_Titulo_CrearViaje.Text;
            _datos[3] = "SCLU Chile Santiago Santiago";
            _datos[4] = _usuario.getLogin();
            _viaje.setidViaje(_viaje.reservarViaje(_datos));
            MultiViewTabControl.ActiveViewIndex = 3;
           
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
            String[] datos = new String[3];
            //datos[0] = Fecha Entrada
            //datos[1] = Fecha Salida
            //datos[2] = Codigo
            datos[0] = "2012/10/20";
            datos[1] = "2012/11/01";
            datos[2] = "SCLU Chile Santigo Santiago";
            _propiedades.obtenerPropiedades("Propiedades Disponibles", datos);
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
            _controllerPropiedad.setIndex(GridView_Propiedades.SelectedIndex);
            Response.Redirect("~/GUI/MyBnB_Propiedades.aspx");
        }


        protected void Button_Reservar_Propiedades_Click(object sender, EventArgs e)
        {
            ControllerViaje _viaje = new ControllerViaje();
            // Aqui tengo q poner el index del q eligio
            String[] pdatos = new String[2];
            int index;
            // Ligar aqui las fechas de entrada y de salida
            pdatos[0] = "2012/10/20";
            pdatos[1] = "2012/11/01";
            if (idPropiedad < 0)
            {
                index = GridView_Propiedades.SelectedIndex;
            }
            else
            {
                index = idPropiedad;
            }
            _viaje.realizarReservacion(index, pdatos);
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
            
            int viajeSeleccionado = DropDownList_Viaje_SolicitarAnfitrion.SelectedIndex;
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

        #endregion

        protected void Button_Filtrar_Propiedades_Click1(object sender, EventArgs e)
        {
            ControllerPropiedades _propiedades = new ControllerPropiedades();
            String[] datos = new String[3];
            //datos[0] = Fecha Entrada
            //datos[1] = Fecha Salida
            //datos[2] = Codigo
            datos[0] = "2012/10/20";
            datos[1] = "2012/11/01";
            datos[2] = "SCLU Chile Santigo Santiago";
            _propiedades.obtenerPropiedades("Propiedades Disponibles", datos);
            GridView_Propiedades.DataSource = _propiedades.getlistaPropiedades();
            GridView_Propiedades.DataBind();
        }

     

    }
}