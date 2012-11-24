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

        /// <summary>
        /// Reserva un viaje, esto es crear un nuevo viaje para poder realizar reservaciones
        /// </summary>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public int reservarViaje(String[] pdatos)
        {
            pdatos[3] = "CRC";
            return _accesoDatosViaje.ReservarViaje(pdatos);
        }

        /// <summary>
        /// Realiza las reservaciones sobre un viaje
        /// </summary>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public String realizarReservacion(String[] pdatos)
        {
             return _accesoDatosViaje.realizarReservacionPropiedad(pdatos);
        }

        /// <summary>
        /// Obtiene todos los titulos de viaje del usuario
        /// </summary>
        /// <param name="plogin"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Obtiene la informacion del viaje seleccionado con el index
        /// </summary>
        /// <param name="pindex"></param>
        /// <returns></returns>
        public String[] obtenerViajeSeleccionado(int pindex)
        {
            return _viajesUsuario.ElementAt(pindex);
        }

        /// <summary>
        /// Obtiene el id del viaje seleccionado
        /// </summary>
        /// <param name="pindex"></param>
        /// <returns></returns>
        public int getidViaje(int pindex)
        {
            return int.Parse(_viajesUsuario[pindex][0]);
        }

    }
}