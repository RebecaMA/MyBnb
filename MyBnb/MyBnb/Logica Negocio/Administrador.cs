using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;

namespace MyBnb.Logica_Negocio
{
    public class Administrador
    {
        AccesoDatosAdministrador _accesoDatosAdministrador;


        public Administrador()
        {
            _accesoDatosAdministrador = new AccesoDatosAdministrador();
        }

        /// <summary>
        /// Crea la categoria de administrador
        /// </summary>
        /// <param name="pcategoria"></param>
        /// <param name="pdescripcion"></param>
        /// <returns></returns>
        public String crearCategoria(String pcategoria, String pdescripcion)
        {
            return _accesoDatosAdministrador.crearCategoria(pcategoria, pdescripcion);
        }
    }
}