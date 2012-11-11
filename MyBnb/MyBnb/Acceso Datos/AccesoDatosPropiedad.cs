﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.LibreriaClases;
using System.Data;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosPropiedad
    {
        AccesoDatos _accesoDatos;
        public AccesoDatosPropiedad() 
        {
            _accesoDatos = new AccesoDatos();
        }


        public List<Propiedad> obtenerPropiedades(String ptipoBusqueda, String[] pdatos)
        { 
            List<Propiedad> _listaPropiedades = new List<Propiedad>();
            String[] _nombreparametros;
            IDataReader _reader = null;
            Propiedad _propiedad;
            Object _objeto;
            if (ptipoBusqueda.Equals("Propiedades Disponibles"))
            {
                _nombreparametros = new String[3] { "@pfechainicio", "@pfechafinal", "@pCodigoLocalidad" };
                _reader = _accesoDatos.leer("spmostrarPropiedadesDisponibles", _nombreparametros,pdatos);
            }

            while (_reader.Read())
            {
                _propiedad = new Propiedad();
                _propiedad.IdPropiedad = _reader.GetInt32(0);
                _propiedad.Titulo = _reader.GetString(1);
                _propiedad.CantidadMaximaPersonas = _reader.GetInt32(2);
                _propiedad.Descripcion = _reader.GetString(3);
                _objeto = _reader.GetValue(4);
                _propiedad.HoraEntrada = _objeto.ToString();
                _objeto = _reader.GetValue(5);
                _propiedad.HoraSalida = _objeto.ToString();
                _propiedad.PrecioNoche = _reader.GetFloat(6);
                _propiedad.CantidadMinimaNoches = _reader.GetInt32(7);

                _listaPropiedades.Add(_propiedad);
            }


            return _listaPropiedades;


        
        }

    }
}