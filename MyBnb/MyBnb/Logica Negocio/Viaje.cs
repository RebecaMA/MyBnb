using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;

namespace MyBnb.Logica_Negocio
{
    public class Viaje
    {

        AccesoDatosViaje _accesoDatosViaje = new AccesoDatosViaje();

        public void reservarViaje(String[] pdatos)
        {
            _accesoDatosViaje.ReservarViaje(pdatos);
        }
    }
}