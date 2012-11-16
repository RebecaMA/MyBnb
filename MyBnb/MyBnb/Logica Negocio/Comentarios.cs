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
    }
}