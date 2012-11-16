using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosViaje
    {
        AccesoDatos _accesoDatos = new AccesoDatos();

        public int ReservarViaje(String[] pdatos)
        {
            Object obj = "-1";
            String[] _nombreparametros = new String[5] { "@pfechaEntrada", "@pfechaSalida", "@ptitulo", "@pCodigoLocalidad", "@plogin" };
            IDataReader reader = _accesoDatos.leer("spregistrarViaje", _nombreparametros, pdatos);
            if (reader.Read())
            {
                obj = reader.GetValue(0);
            }


            return Int32.Parse(obj.ToString());

        }

        public String realizarReservacionPropiedad(String[] pdatos)
        {

            String[] _nombreparametros = new String[4] { "@pfechaEntrada", "@pfechaSalida", "@pidPropiedad", "@pidViaje", };
            IDataReader reader = _accesoDatos.leer("sprealizarReservacion", _nombreparametros, pdatos);
            Object objeto = "Ocurrio un error";
            if (reader.Read())
            {
                objeto = reader.GetValue(0);
            }

            return objeto.ToString();
        }

        public List<String[]> obtenerViajesUsuario(String plogin)
        {
            List<String[]> _listaviajesusuario = new List<String[]>();
            String[] _nombreParametros = new String[1] { "@plogin" };
            String[] _retorno;
            Object _objeto;

            IDataReader reader = _accesoDatos.leer("spViajesUsuario", _nombreParametros, plogin);

            while (reader.Read())
            {
                _retorno = new String[13];
                _retorno[0] = reader.GetString(0);
                _objeto = reader.GetValue(1);
                _retorno[1] = _objeto.ToString();
                _objeto = reader.GetValue(2);
                _retorno[2] = _objeto.ToString();
                _retorno[3] = reader.GetString(3);
                _retorno[4] = reader.GetString(4);
                _objeto = reader.GetValue(6);
                _retorno[5] = _objeto.ToString();
                _objeto = reader.GetValue(6);
                _retorno[6] = _objeto.ToString();
                _retorno[7] = reader.GetString(7);
                _retorno[8] = reader.GetString(8);
                _retorno[9] = reader.GetString(9);
                _retorno[10] = reader.GetString(10);
                _retorno[11] = reader.GetString(11);
                _retorno[12] = reader.GetString(12);
                _listaviajesusuario.Add(_retorno);


            }

            return _listaviajesusuario;

        }

    }
}