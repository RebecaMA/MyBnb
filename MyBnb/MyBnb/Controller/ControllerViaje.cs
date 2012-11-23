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
        Viajes _viaje;
        static int _idViaje;


        public ControllerViaje()
        {
            _viaje = new Viajes();
        }

        public int reservarViaje(String[] pdatos)
        {

            return _viaje.reservarViaje(pdatos);
        }

        public String realizarReservacion(String[] pdatos)
        {
            ControllerPropiedades _propiedad = new ControllerPropiedades();
            int index = _propiedad.getIndex();
            int viaje = getidViaje();
            if (index >= 0 && viaje > 0)
            {
                String[] datos = new String[4];
                datos[0] = pdatos[0];
                datos[1] = pdatos[1];
                datos[2] = _propiedad.obtenerIdPropiedad(index).ToString();
                datos[3] = viaje.ToString();
                _viaje.realizarReservacion(datos);
                return _viaje.realizarReservacion(datos);
            }
            else
            {
                return "Debe de elegir una propiedad";
            }

        }


        public List<String> obtenerViajesUsuario()
        {
            ControllerUsuario _usuario = new ControllerUsuario();
            return _viaje.obtenerViajesUsuario(_usuario.getLogin());
        }

        public String[] solicitarAnfitrion(int pindex)
        {
            return _viaje.obtenerViajeSeleccionado(pindex);
        }

        public void setidViajeIndex(int pindex)
        {
            _idViaje = _viaje.getidViaje(pindex);
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