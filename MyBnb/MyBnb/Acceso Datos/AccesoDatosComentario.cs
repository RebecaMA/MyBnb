using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.LibreriaClases;
using System.Data;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosComentario
    {
        AccesoDatos _accesoDatos;

        public AccesoDatosComentario()
        {
            _accesoDatos = new AccesoDatos();
        }

        public String realizarComentario(Comentario pcomentario)
        {
            String[] _nombreParametos = new String[5] { "@pComentario", "@pLogin", "pidPropiedad", "@pRanking", "@pFecha" };
            IDataReader _reader = _accesoDatos.leer("sprealizarComentario", _nombreParametos, pcomentario.DescripcionComentario, pcomentario.Login, pcomentario.IdPropiedad.ToString(),
                                    pcomentario.Ranking.ToString(), pcomentario.FechaComentario);
            String _retorno = null;

            if (_reader.Read())
            {
                _retorno = _reader.GetString(0);
            }

            return _retorno;
        }
    }
}