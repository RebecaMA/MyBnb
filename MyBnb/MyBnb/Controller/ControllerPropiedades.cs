using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;
using MyBnb.LibreriaClases;


namespace MyBnb.Controller
{
    public class ControllerPropiedades
    {

        private Propiedades _propiedades;

        public ControllerPropiedades()
        {
            _propiedades = new Propiedades();
        }

        /// <summary>
        /// Se encarga de obtener las propiedaes que cumplen con los parametros de busqueda
        /// </summary>
        /// <param name="ptipoBusqueda"></param>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public List<String[]> obtenerPropiedades(String ptipoBusqueda, String[] pdatos)
        {
            return _propiedades.obtenerListaPropiedades(ptipoBusqueda, pdatos);
        }

        /// <summary>
        /// Se encarga de obtener los tipos de las propiedades
        /// </summary>
        /// <param name="pTipo"></param>
        /// <returns></returns>
        public List<String> obtenerTipo(String pTipo)
        {
            return _propiedades.obtenerTipo(pTipo);
        }

        /// <summary>
        /// Se encarga de listar las propiedades
        /// </summary>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public String listarPropiedad(String[] pdatos)
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            return _propiedades.listarPropiedad(pdatos,_controllerUsuario.getLogin());
        }

        /// <summary>
        /// Se encarga de obtener los id de las propiedaes
        /// </summary>
        /// <param name="pindex"></param>
        /// <returns></returns>
        public int obtenerIdPropiedad(int pindex)
        {
            return _propiedades.obtenerId(pindex);
        }

        /// <summary>
        /// Se encarga de obtener las propiedades
        /// </summary>
        /// <returns></returns>
        public String[] obtenerPropiedad()
        {
            return _propiedades.obtenerPropiedad();
        }

        /// <summary>
        /// Obtiene propiedades segun el estado
        /// </summary>
        /// <param name="pestado"></param>
        /// <returns></returns>
        public String[] obtenerPropiedad(String pestado)
        {
            return _propiedades.obtenerPropiedad(pestado);
        }


        /// <summary>
        /// Setea el index 
        /// </summary>
        /// <param name="index"></param>
        public void setIndex(int index)
        {
            _propiedades.setIndex(index);
        }

        /// <summary>
        /// Obtiene el index
        /// </summary>
        /// <returns></returns>
        public int getIndex()
        {
            return _propiedades.getIndex();
        }

        /// <summary>
        /// Obtiene la lista de las propiedades
        /// </summary>
        /// <returns></returns>
        public List<Propiedad> getlistaPropiedades()
        {
            return _propiedades.getListaPropiedades();
        }



    }
}