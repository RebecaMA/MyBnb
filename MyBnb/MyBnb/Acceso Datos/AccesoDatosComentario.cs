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

        public List<Comentario> obtenerComentariosPropiedad(String pidPropiedad)
        {
            List<Comentario> _listaComentarios = new List<Comentario>();
            Comentario _comentario;
            Object _objeto;
            IDataReader _reader = _accesoDatos.leer("spobtenerComentariosPropiedad", new String[1] { "@pidPropiedad" }, new String[1] { pidPropiedad });
            while (_reader.Read())
            {
                _comentario = new Comentario();
                _comentario.DescripcionComentario = _reader.GetString(0);
                _objeto = _reader.GetValue(1);
                _comentario.Ranking = int.Parse(_objeto.ToString());
                _objeto = _reader.GetValue(2);
                _comentario.FechaComentario = _objeto.ToString();
                _comentario.Login = _reader.GetString(3);
                _listaComentarios.Add(_comentario);
            }

            return _listaComentarios;
        }

        public String verificarReservacion(int pidPropiedad, String plogin,String pfecha)
        {
            String[] _nombreparametros = new String[3] { "@pidPropiedad", "@pLogin","@pfecha" };
            IDataReader _reader = _accesoDatos.leer("spverificarReservacion", _nombreparametros, pidPropiedad.ToString(), plogin,pfecha);
            if (_reader.Read())
            {
                return _reader.GetString(0);
            }
            else return "Error";

        }
    }
}