using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosViaje
    {
        AccesoDatos _accesoDatos = new AccesoDatos();

        public void ReservarViaje(String[] pdatos)
        {
            String[] _nombreparametros = new String[6] { "@pfechaEntrada", "@pfechaSalida", "@pprecioTotal", "@pcantidadnoches", "@plogin", "@pidPropiedad" };
            _accesoDatos.escribirDB("spListarPropiedad", _nombreparametros, pdatos);

        }

    }
}