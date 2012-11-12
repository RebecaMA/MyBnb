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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                MultiViewTabControl.ActiveViewIndex = 0;
                DropDownList_Tipo_ListarPropiedad.DataSource = _controllerPropiedad.obtenerTipo("ObtenerTipoPropiedad");
                DropDownList_Tipo_ListarPropiedad.DataBind();
                DropDownList_Hospedaje_ListarPropiedad0.DataSource = _controllerPropiedad.obtenerTipo("ObtenerTipoHospedaje");
                DropDownList_Hospedaje_ListarPropiedad0.DataBind();
                DropDownList_Localidad_ListarPropiedad.DataSource = _controllerPropiedad.obtenerTipo("ObtenerLocalidad");
                DropDownList_Localidad_ListarPropiedad.DataBind();
                DropDownList_HoraEntrada_ListarPropiedad.DataSource = new int[]{1,2,3,4,5,6,7,8,9,10,11,12};
                DropDownList_HoraEntrada_ListarPropiedad.DataBind();
                DropDownList_HoraSalida_ListarPropiedad0.DataSource = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
                DropDownList_HoraSalida_ListarPropiedad0.DataBind();

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

        protected void Button_ListarPropiedad_ListarPropiedad_Click(object sender, EventArgs e)
        {
            //{"@pTipoPropiedad","@pcantidadMaximaPersonas","@pTitulo","@pdescripcion","@pfoto","@phoraEntrada",
            //    "@pHoraSalida","@pCodigoLocalidad","@pTipoHospedaje","@pprecioPorNoche","@pprecioVolumen","@pcantidadMinimaNoches"};

            String[] _datos = new String[12];
            _datos[0] = DropDownList_Tipo_ListarPropiedad.SelectedItem.ToString();
            _datos[1] = TextBox_Capacidad_ListarPropiedad0.Text;
            _datos[2] = TextBox_Titulo_ListarPropiedad.Text;
            _datos[3] = TextBox_Descripcion_ListarPropiedad.Text;
            _datos[4] = null;
            _datos[5] = DropDownList_HoraEntrada_ListarPropiedad.SelectedItem.ToString() + " " + DropDownList_TiempoEntrada_ListarPropiedad.SelectedItem.ToString();
            _datos[6] = DropDownList_HoraSalida_ListarPropiedad0.SelectedItem.ToString() + " " + DropDownList_TiempoSalida_ListarPropiedad3.SelectedItem.ToString();
            _datos[7] = DropDownList_Localidad_ListarPropiedad.SelectedItem.ToString();
            _datos[8] = DropDownList_Hospedaje_ListarPropiedad0.SelectedItem.ToString();
            _datos[9] = TextBox_PrecioNoche_ListarPropiedad.Text;
            _datos[10] = TextBox_PrecioVolumen.Text;
            _datos[11] = TextBox_CantidadNoches.Text;

           TextBox_Titulo_ListarPropiedad.Text =  _controllerPropiedad.listarPropiedad(_datos);
    
            



        }

        #endregion

        #region Reservar Viaje

        struct Persona
        {
            public string Id;
            public string Nombre;
        }

        private List<Persona> ObtenerNuevaLista()
        {
            List<Persona> lista = new List<Persona>();

            Persona p1 = new Persona();
            p1.Id = "1";
            p1.Nombre = "Luisa";

            Persona p2 = new Persona();
            p2.Id = "2";
            p2.Nombre = "Karla";

            lista.Add(p1);
            lista.Add(p2);

            return lista;

        }

        private List<Persona> GuardarLista(Persona persona)
        {
            if (Session["lista"] == null)
            {
                List<Persona> p = this.ObtenerNuevaLista();
                p.Add(persona);
                Session["lista"] = p;
            }
            else
            {
                List<Persona> p = (List<Persona>)Session["lista"];
                p.Add(persona);
                Session["lista"] = p;
            }
            return (List<Persona>)Session["lista"];
        }

        private List<Persona> ObtenerLista()
        {
            if (Session["lista"] == null)
            {
                return this.ObtenerNuevaLista();
            }
            else
            {
                return (List<Persona>)Session["lista"];
            }
        }

        protected void GridView_Reservar_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                TextBox txtNewName = (TextBox)GridView_Reservar.FooterRow.FindControl("txtNewName");
                TextBox txtNewId = (TextBox)GridView_Reservar.FooterRow.FindControl("txtNewId");

                Persona p = new Persona();
                p.Id = txtNewId.Text;
                p.Nombre = txtNewName.Text;

                this.GuardarLista(p);
                this.GridView_Reservar.DataSource = this.ObtenerLista();
                this.GridView_Reservar.DataBind();
            }
        }

        #endregion

        #region Solicitar Anfitrion

        #endregion

        #region Administrar WishList

        #endregion
    }
}