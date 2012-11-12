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

        public List<String> obtenerTipo(String ptipo)
        {
            List<String> _resultados = new List<String>();
            
            IDataReader _reader = null;


            if (ptipo.Equals("ObtenerTipoHospedaje"))
            { _reader = _accesoDatos.leer("spObtenerTipoHospedaje"); }
            else if (ptipo.Equals("ObtenerTipoPropiedad"))
            { _reader = _accesoDatos.leer("spObtenerTipoPropiedad"); }
            else if (ptipo.Equals("ObtenerLocalidad"))
            { _reader = _accesoDatos.leer("spObtenerLocalidades"); }
            
            

            while (_reader.Read())
            {
                _resultados.Add(_reader.GetString(0));
            }


            return _resultados;
        }

        public String listarPropiedad(Propiedad ppropiedad)
        {

            String _retorno = null;
            String[] _nombreparametros = new String[12]{"@pTipoPropiedad","@pcantidadMaximaPersonas","@pTitulo","@pdescripcion","@pfoto","@phoraEntrada",
                "@pHoraSalida","@pCodigoLocalidad","@pTipoHospedaje","@pprecioPorNoche","@pprecioVolumen","@pcantidadMinimaNoches"};
            IDataReader _reader = null;

            _reader = _accesoDatos.leer("spListarPropiedad",_nombreparametros,ppropiedad.TipoPropiedad,ppropiedad.CantidadMaximaPersonas.ToString(),ppropiedad.Titulo,
                                        ppropiedad.Descripcion,null,ppropiedad.HoraEntrada,ppropiedad.HoraSalida,ppropiedad.Localidad, ppropiedad.TipoHospedaje,
                                        ppropiedad.PrecioNoche.ToString(),ppropiedad.PrecioVolumen.ToString(),ppropiedad.CantidadMinimaNoches.ToString());

            if (_reader.Read())
            {
                _retorno = _reader.GetString(0);
            }
            return _retorno;
        }

    }
}