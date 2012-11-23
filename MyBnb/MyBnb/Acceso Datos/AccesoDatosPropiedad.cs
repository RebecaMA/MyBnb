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

        /// <summary>
        /// Obtiene la lista de propiedades dependiendo del tipo de busqueda que se necesite
        /// El tipo de busqueda es dado en el parametro ptipoBusqueda, llama al sp correspondiente
        /// </summary>
        /// <param name="ptipoBusqueda"></param>
        /// <param name="pdatos"></param>
        /// <returns></returns>
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
                _reader = _accesoDatos.leer("spmostrarPropiedadesDisponibles", _nombreparametros, pdatos);
            }
            else if (ptipoBusqueda.Equals("Mostrar Propiedades"))
            {
                _reader = _accesoDatos.leer("spmostrarPropiedades");
            }else if(ptipoBusqueda.Equals("Mostrar Propiedades Wishlist"))
            {
                _reader = _accesoDatos.leer("spmostrarPropiedadesWishlist",new String[]{"@pLogin"},pdatos[0]);
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
                _objeto = _reader.GetValue(6);
                _propiedad.PrecioNoche = float.Parse(_objeto.ToString());
                _objeto = _reader.GetValue(7);
                _propiedad.PrecioVolumen = float.Parse(_objeto.ToString());
                _objeto = _reader.GetValue(8);
                _propiedad.CantidadMinimaNoches = int.Parse(_objeto.ToString());
                _objeto = _reader.GetValue(9);
                _propiedad.Ranking = int.Parse(_objeto.ToString());
                _objeto = _reader.GetValue(10);
                _propiedad.Localidad = _objeto.ToString();
                _propiedad.TipoPropiedad = _reader.GetString(11);
                _propiedad.TipoHospedaje = _reader.GetString(12);


                _listaPropiedades.Add(_propiedad);
            }


            return _listaPropiedades;
        }
        /// <summary>
        /// Devuelve los tipos de propiedades o categorias de hospedaje listadas en la base de datos, llamando
        /// al spobtenerTipo
        /// </summary>
        /// <param name="ptipo"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Ingresa la propiedad a la base de datos
        /// </summary>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public String listarPropiedad(String[] pdatos)
        {

            String _retorno = null;
            String[] _nombreparametros = new String[12]{"@pTipoPropiedad","@pcantidadMaximaPersonas","@pTitulo","@pdescripcion","@pfoto","@phoraEntrada",
                "@pHoraSalida","@pCodigoLocalidad","@pTipoHospedaje","@pprecioPorNoche","@pprecioVolumen","@pcantidadMinimaNoches"};
            IDataReader _reader = null;

            _reader = _accesoDatos.leer("spListarPropiedad", _nombreparametros, pdatos);

            if (_reader.Read())
            {
                _retorno = _reader.GetString(0);
            }
            return _retorno;
        }

  
    }
}