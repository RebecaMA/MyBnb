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

        public ControllerPropiedades(Boolean pboolean)
        {
            _propiedades = new Propiedades(pboolean);
        }

        public List<String[]> obtenerPropiedades(String ptipoBusqueda, String[] pdatos)
        {
            return _propiedades.obtenerListaPropiedades(ptipoBusqueda, pdatos);
        }

        public List<String> obtenerTipo(String pTipo)
        {
            return _propiedades.obtenerTipo(pTipo);
        }

        public String listarPropiedad(String[] pdatos)
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            return _propiedades.listarPropiedad(pdatos,_controllerUsuario.getLogin());
        }

        public int obtenerIdPropiedad(int pindex)
        {
            return _propiedades.obtenerId(pindex);
        }

        public String[] obtenerPropiedad()
        {
            return _propiedades.obtenerPropiedad();
        }

        public String[] obtenerPropiedad(String pestado)
        {
            return _propiedades.obtenerPropiedad(pestado);
        }


        public void setIndex(int index)
        {
            _propiedades.setIndex(index);
        }
        public int getIndex()
        {
            return _propiedades.getIndex();
        }
        public List<Propiedad> getlistaPropiedades()
        {
            return _propiedades.getListaPropiedades();
        }



    }
}