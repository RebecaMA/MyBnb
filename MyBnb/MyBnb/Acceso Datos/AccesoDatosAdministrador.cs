using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosAdministrador
    {
        AccesoDatos _accesoDatos;

        public AccesoDatosAdministrador()
        {
            _accesoDatos = new AccesoDatos();
        }

        /// <summary>
        /// Crea la categoria de hospedaje del usuario
        /// </summary>
        /// <param name="pcategoria"></param>
        /// <param name="pdescripcion"></param>
        /// <returns></returns>
        public String crearCategoria(String pcategoria, String pdescripcion)
        {
            _accesoDatos.escribirDB("spcrearCategoria", new string[2] { "@pCategoria", "@pDescripcion" }, new String[2] { pcategoria, pdescripcion });
            return "Crear Categoria";
        }
    }
}