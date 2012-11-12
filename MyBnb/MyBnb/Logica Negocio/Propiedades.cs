using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;
using MyBnb.LibreriaClases;

namespace MyBnb.Logica_Negocio
{
    public class Propiedades
    {
        AccesoDatosPropiedad _accesoDatosPropiedad;
        static List<Propiedad> _listaPropiedades;
        public Propiedades() 
        {
            _accesoDatosPropiedad = new AccesoDatosPropiedad();
            _listaPropiedades = new List<Propiedad>();
            
        }

        public String[] obtenerPropiedades(String ptipoBusqueda, String[] pdatos)
        {
            String[] _informacionPropiedades =null;
            

            _listaPropiedades = _accesoDatosPropiedad.obtenerPropiedades(ptipoBusqueda, pdatos);
            _informacionPropiedades = new String[_listaPropiedades.Count];


         _listaPropiedades.ForEach(delegate(Propiedad ppropiedad)
        {
          // pongo lo q hay q hacerle a cada propiedad
        });

         return _informacionPropiedades;
             
        }

        public List<String> obtenerTipo(String pTipo)
        {
            return _accesoDatosPropiedad.obtenerTipo(pTipo);
        }

        public String listarPropiedad(String pdatos)
        {
            Propiedad _propiedad = null;

            return _accesoDatosPropiedad.listarPropiedad(_propiedad);
        }

       
        
    }
}