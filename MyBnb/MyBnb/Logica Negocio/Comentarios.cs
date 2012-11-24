using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.LibreriaClases;
using MyBnb.Acceso_Datos;

namespace MyBnb.Logica_Negocio
{
    public class Comentarios
    {
        AccesoDatosComentario _accesoDatosComentario;

        public Comentarios()
        {

        }

        /// <summary>
        /// Se encarga de realizar los comentarios a una propiedad de un usuario que se hospedo en ella anteriormente
        /// </summary>
        /// <param name="pcomentario"></param>
        /// <returns></returns>
        public String realizarComentario(String[] pcomentario)
        {
            Comentario _comentario = new Comentario();
            _accesoDatosComentario = new AccesoDatosComentario();
            _comentario.DescripcionComentario = pcomentario[0];
            _comentario.Login = pcomentario[1];
            _comentario.IdPropiedad = int.Parse(pcomentario[2]);
            _comentario.Ranking = int.Parse(pcomentario[3]);
            _comentario.FechaComentario = pcomentario[4];
            return _accesoDatosComentario.realizarComentario(_comentario);
        }

        /// <summary>
        /// Obtiene los comentarios hechos a esa propiedad
        /// </summary>
        /// <param name="pidPropiedad"></param>
        /// <returns></returns>
        public List<Comentario> obtenerComentariosPropiedad(String pidPropiedad)
        {
            _accesoDatosComentario = new AccesoDatosComentario();
            return _accesoDatosComentario.obtenerComentariosPropiedad(pidPropiedad);
        }

        /// <summary>
        /// Verifica si el usuario puede realizar el comentario
        /// </summary>
        /// <param name="pidPropiedad"></param>
        /// <param name="plogin"></param>
        /// <returns></returns>
        public Boolean verificarComentario(int pidPropiedad, String plogin)
        {
            String fecha = DateTime.Today.Year +  "/" + DateTime.Today.Month+ "/" + DateTime.Today.Day;
            AccesoDatosComentario _accesoDatosComentario = new AccesoDatosComentario();
            if (_accesoDatosComentario.verificarReservacion(pidPropiedad, plogin,fecha).Equals("Aprobado"))
                return true;
            else return false;
        }
    }
}