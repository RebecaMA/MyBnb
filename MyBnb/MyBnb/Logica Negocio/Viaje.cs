using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;

namespace MyBnb.Logica_Negocio
{
    public class Viajes
    {

        AccesoDatosViaje _accesoDatosViaje = new AccesoDatosViaje();

        public int reservarViaje(String[] pdatos)
        {
            String[]_split = pdatos[3].Split(' ');
            pdatos[3] =_split[0];
            return _accesoDatosViaje.ReservarViaje(pdatos);
        }

        public String realizarReservacion(String[] pdatos)
        {
            

            return "En proceso";
        }
    }
}