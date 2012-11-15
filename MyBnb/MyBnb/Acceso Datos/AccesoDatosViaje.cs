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
                obj =  reader.GetValue(0);
            }


                return Int32.Parse(obj.ToString());

        }

        public String realizarReservacionPropiedad( String[] pdatos)
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

    }
}