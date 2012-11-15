using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Controller;
using MyBnb.Logica_Negocio;

namespace MyBnb.Controller
{
    public class ControllerViaje
    {
        Viajes _viaje = new Viajes();
        static int _idViaje;

     
        public ControllerViaje() { }

        public int reservarViaje(String[] pdatos)
        {
             
           return _viaje.reservarViaje(pdatos);
        }

        public String realizarReservacion(int pindex, String[] pdatos)
        {
           ControllerPropiedades _propiedad = new ControllerPropiedades();
           String[] datos = new String[4];
           datos[0] = pdatos[0];
           datos[1] = pdatos[1];
           datos[2] = _propiedad.obtenerIdPropiedad(pindex).ToString();
           datos[3] = getidViaje().ToString();

           return _viaje.realizarReservacion(datos);
        }

        public void setidViaje(int pidViaje)
        {
            _idViaje = pidViaje;
        }

        public int getidViaje() 
        {
            return _idViaje;
        }

        
    }
}