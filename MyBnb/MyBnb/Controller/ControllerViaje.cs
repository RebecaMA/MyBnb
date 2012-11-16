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


        public List<String> obtenerViajesUsuario()
        {
            ControllerUsuario _usuario = new ControllerUsuario();
            return _viaje.obtenerViajesUsuario(_usuario.getLogin());
        }

        public String[] solicitarAnfitrion(int pindex)
        {
            return _viaje.obtenerViajeSeleccionado(pindex);
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