﻿using System;
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
        //ControllerPropiedades _controllerPropiedad = new ControllerPropiedades();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                MultiViewTabControl.ActiveViewIndex = 0;
                //DropDownList_Tipo_ListarPropiedad.DataSource = _controllerPropiedad.obtenerTipo("ObtenerTipoPropiedad");
                //DropDownList_Tipo_ListarPropiedad.DataBind();
                //DropDownList_Hospedaje_ListarPropiedad0.DataSource = _controllerPropiedad.obtenerTipo("ObtenerTipoHospedaje");
                //DropDownList_Hospedaje_ListarPropiedad0.DataBind();
                //DropDownList_Pais_ListarPropiedad.DataSource = _controllerPropiedad.obtenerTipo("ObtenerLocalidad");
                //DropDownList_Pais_ListarPropiedad.DataBind();
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

        }

        #endregion

        #region Reservar Viaje

        //struct Persona
        //{
        //    public string Titulo;
        //    public string Tipo;
        //}

        //private List<Persona> ObtenerNuevaLista()
        //{
        //    List<Persona> lista = new List<Persona>();

        //    Persona p1 = new Persona();
        //    p1.Titulo = "1";
        //    p1.Tipo = "Luisa";

        //    Persona p2 = new Persona();
        //    p2.Titulo = "2";
        //    p2.Tipo = "Karla";

        //    lista.Add(p1);
        //    lista.Add(p2);

        //    return lista;

        //}

        //private List<Persona> GuardarLista(Persona persona)
        //{
        //    if (Session["lista"] == null)
        //    {
        //        List<Persona> p = this.ObtenerNuevaLista();
        //        p.Add(persona);
        //        Session["lista"] = p;
        //    }
        //    else
        //    {
        //        List<Persona> p = (List<Persona>)Session["lista"];
        //        p.Add(persona);
        //        Session["lista"] = p;
        //    }
        //    return (List<Persona>)Session["lista"];
        //}

        //private List<Persona> ObtenerLista()
        //{
        //    if (Session["lista"] == null)
        //    {
        //        return this.ObtenerNuevaLista();
        //    }
        //    else
        //    {
        //        return (List<Persona>)Session["lista"];
        //    }
        //}

        //protected void GridView_Reservar_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName.Equals("AddNew"))
        //    {
        //        TextBox txtNewName = (TextBox)GridView_Reservar.FooterRow.FindControl("txtNewName");
        //        TextBox txtNewId = (TextBox)GridView_Reservar.FooterRow.FindControl("txtNewId");

        //        Persona p = new Persona();
        //        p.Titulo = txtNewId.Text;
        //        p.Tipo = txtNewName.Text;

        //        this.GuardarLista(p);
        //        this.GridView_Reservar.DataSource = this.ObtenerLista();
        //        this.GridView_Reservar.DataBind();
        //    }
        //}

        #endregion

        protected void Button_Buscar_ListarPropiedad_Click(object sender, EventArgs e)
        {
            //http://www.youtube.com/watch?v=QdJUZzBgwrU
        }

        #region Solicitar Anfitrion

        #endregion

        #region Administrar WishList

        #endregion
    }
}