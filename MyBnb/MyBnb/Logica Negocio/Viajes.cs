using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;

namespace MyBnb.Logica_Negocio
{
    public class Viajes
    {

        AccesoDatosViaje _accesoDatosViaje;
        static List<String[]> _viajesUsuario;

        public Viajes()
        {
            _accesoDatosViaje = new AccesoDatosViaje();
        }

        public int reservarViaje(String[] pdatos)
        {
            String[] _split = pdatos[3].Split(' ');
            pdatos[3] = _split[0];
            return _accesoDatosViaje.ReservarViaje(pdatos);
        }

        public String realizarReservacion(String[] pdatos)
        {
             return _accesoDatosViaje.realizarReservacionPropiedad(pdatos);
        }

        public List<String> obtenerViajesUsuario(String plogin)
        {
            _viajesUsuario = _accesoDatosViaje.obtenerViajesUsuario(plogin);
            List<String> titulos = new List<String>();

            _viajesUsuario.ForEach(delegate(String[] viaje)
            {
                titulos.Add(viaje[1]);
            });

            return titulos;
        }

        public String[] obtenerViajeSeleccionado(int pindex)
        {
            return _viajesUsuario.ElementAt(pindex);
        }

        public int getidViaje(int pindex)
        {
            return int.Parse(_viajesUsuario[pindex][0]);
        }

    }
}