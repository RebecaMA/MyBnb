using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;


namespace MyBnb.Controller
{
    public class ControllerPropiedades
    {
        private Propiedades _propiedades;

        public ControllerPropiedades()
        {
            _propiedades = new Propiedades();
        }

        public String[] obtenerPropiedades(String ptipoBusqueda, String[] pdatos)
        {
            return _propiedades.obtenerPropiedades(ptipoBusqueda, pdatos);
        }

        public List<String> obtenerTipo(String pTipo)
        {
            return _propiedades.obtenerTipo(pTipo);
        }

        public String listarPropiedad(String[] pdatos)
        {
            return _propiedades.listarPropiedad(pdatos);            
        }

    }
}