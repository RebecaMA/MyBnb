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

        public List<Comentario> obtenerComentariosPropiedad(String pidPropiedad)
        {
            _accesoDatosComentario = new AccesoDatosComentario();
            return _accesoDatosComentario.obtenerComentariosPropiedad(pidPropiedad);
        }

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