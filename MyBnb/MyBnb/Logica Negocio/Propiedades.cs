using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;
using MyBnb.LibreriaClases;
using MyBnb.Controller;

namespace MyBnb.Logica_Negocio
{
    public class Propiedades
    {
        AccesoDatosPropiedad _accesoDatosPropiedad;
        static List<Propiedad> _listaPropiedades;
        static int index;


        /// <summary>
        /// Setea el index cada vez que se crea una propiedad nueva
        /// </summary>
        public Propiedades()
        {
            _accesoDatosPropiedad = new AccesoDatosPropiedad();
        }

        /// <summary>
        /// Obtiene la lista de propiedades dependiendo del parametro de busqueda enviado, coloca el valor de las propiedades en la lista de propiedades
        /// </summary>
        /// <param name="ptipoBusqueda"></param>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public List<String[]> obtenerListaPropiedades(String ptipoBusqueda, String[] pdatos)
        {
            List<String[]> _informacionPropiedades = null;
            if (ptipoBusqueda.Equals("Propiedades Disponibles"))
            { 
                String[] _split = pdatos[2].Split(' ');
                pdatos[2] = _split[0];               
            }

            _listaPropiedades = _accesoDatosPropiedad.obtenerPropiedades(ptipoBusqueda, pdatos);
            _informacionPropiedades = new List<String[]>();

            _listaPropiedades.ForEach(delegate(Propiedad ppropiedad)
            {
                String[] _propiedad = new String[11];
                _propiedad[0] = ppropiedad.Titulo;
                _propiedad[1] = ppropiedad.Localidad;
                _propiedad[2] = ppropiedad.Descripcion;
                _propiedad[3] = ppropiedad.TipoPropiedad;
                _propiedad[4] = ppropiedad.TipoHospedaje;
                _propiedad[5] = ppropiedad.CantidadMaximaPersonas.ToString();
                _propiedad[6] = ppropiedad.HoraEntrada;
                _propiedad[7] = ppropiedad.HoraSalida;
                _propiedad[8] = ppropiedad.PrecioNoche.ToString();
                _propiedad[9] = ppropiedad.PrecioVolumen.ToString();
                _propiedad[10] = ppropiedad.CantidadMinimaNoches.ToString();
                _informacionPropiedades.Add(_propiedad);
            });

            return _informacionPropiedades;

        }



        /// <summary>
        /// Obtiene el tipo de propiedad
        /// </summary>
        /// <param name="pTipo"></param>
        /// <returns></returns>
        public List<String> obtenerTipo(String pTipo)
        {
            return _accesoDatosPropiedad.obtenerTipo(pTipo);
        }

        /// <summary>
        /// Obtiene el id de la propiedad que se encuentre en la posicion del index
        /// </summary>
        /// <param name="pindex"></param>
        /// <returns></returns>
        public int obtenerId(int pindex)
        {
            return _listaPropiedades.ElementAt(pindex).IdPropiedad;
        }
        /// <summary>
        /// Obtiene los datos de la propiedad señalada en el index
        /// </summary>
        /// <returns></returns>
        public String[] obtenerPropiedad()
        {
            String[] _datospropiedades = new String[11];
            Propiedad _propiedad = _listaPropiedades.ElementAt(index);
            _datospropiedades[0] = _propiedad.Titulo;
            _datospropiedades[1] = _propiedad.Localidad;
            _datospropiedades[2] = _propiedad.Descripcion;
            _datospropiedades[3] = _propiedad.TipoPropiedad;
            _datospropiedades[4] = _propiedad.TipoHospedaje;
            _datospropiedades[5] = _propiedad.CantidadMaximaPersonas.ToString();
            _datospropiedades[6] = _propiedad.HoraEntrada;
            _datospropiedades[7] = _propiedad.HoraSalida;
            _datospropiedades[8] = _propiedad.PrecioNoche.ToString();
            _datospropiedades[9] = _propiedad.PrecioVolumen.ToString();
            _datospropiedades[10] = _propiedad.CantidadMinimaNoches.ToString();
            return _datospropiedades;
        }
        /// <summary>
        /// Obtiene los datos de la propiedad dependiendo de su estado es la siguiente o la anterior al index
        /// </summary>
        /// <param name="pestado"></param>
        /// <returns></returns>
        public String[] obtenerPropiedad(String pestado)
        {
            String[] _datospropiedades;
            Propiedad _propiedad;
            if (pestado.Equals("sig"))
            {
                index += 1;
                if (index >= _listaPropiedades.Count)
                {
                    index = 0;
                }
            }
            else if (pestado.Equals("ant"))
            {
                index -= 1;
                if (index < 0)
                {
                    index = _listaPropiedades.Count - 1;
                }
            }
            _propiedad = _listaPropiedades.ElementAt(index);
            _datospropiedades = new String[11];
            _datospropiedades[0] = _propiedad.Titulo;
            _datospropiedades[1] = _propiedad.Localidad;
            _datospropiedades[2] = _propiedad.Descripcion;
            _datospropiedades[3] = _propiedad.TipoPropiedad;
            _datospropiedades[4] = _propiedad.TipoHospedaje;
            _datospropiedades[5] = _propiedad.CantidadMaximaPersonas.ToString();
            _datospropiedades[6] = _propiedad.HoraEntrada;
            _datospropiedades[7] = _propiedad.HoraSalida;
            _datospropiedades[8] = _propiedad.PrecioNoche.ToString();
            _datospropiedades[9] = _propiedad.PrecioVolumen.ToString();
            _datospropiedades[10] = _propiedad.CantidadMinimaNoches.ToString();
            return _datospropiedades;
        }


        /// <summary>
        /// Se encarga de listar una propiedad
        /// </summary>
        /// <param name="pdatos"></param>
        /// <param name="plogin"></param>
        /// <returns></returns>
        public String listarPropiedad(String[] pdatos,String plogin)
        {
            ControllerTwitter _twitter;
            String _retorno,_publicacion,localidad;
            String _tiempoEntrada, _tiempoSalida;
            String[] _split;
            float _numero;            
            int _horaEntrada, _HoraSalida;


            _twitter = new ControllerTwitter();
            if (!float.TryParse(pdatos[1], out _numero))
            {
                _retorno = "Capacidad debe ser número";
            }
            else if ((!float.TryParse(pdatos[9], out _numero)) || (!float.TryParse(pdatos[10], out _numero)))
            {
                _retorno = "Precio debe de ser un número";
            }
            else if (!float.TryParse(pdatos[11], out _numero))
            {
                _retorno = "Cantidad Noches Mínimas debe de ser un número";
            }
            else
            {
                _split = pdatos[5].Split(' ');
                _horaEntrada = Int32.Parse(_split[0]);
                _tiempoEntrada = _split[1];
                _split = pdatos[6].Split(' ');
                _HoraSalida = Int32.Parse(_split[0]);
                _tiempoSalida = _split[1];

                if (_tiempoEntrada.Equals("PM"))
                {
                    pdatos[5] = (_horaEntrada + 12) + ":00";
                }
                else { pdatos[5] = _horaEntrada + ":00"; }
                if (_tiempoSalida.Equals("PM"))
                {
                    pdatos[6] = (_HoraSalida + 12) + ":00";
                }
                else { pdatos[6] = _HoraSalida + ":00"; }

                _split = pdatos[7].Split(' ');

                pdatos[7] = _split[0];
                localidad = _split[1] + " " + _split[2];

                _retorno = _accesoDatosPropiedad.listarPropiedad(pdatos);
                if (_retorno.Equals("Ingresada"))
                {
                   _publicacion = "Nueva Propiedad: Titulo: " + pdatos[2] + " Localidad: " + localidad + " Usuario: " + plogin;
                    _retorno = _twitter.realizarPublicacion(_publicacion);
                }
            }

            return _retorno;

        }
        /// <summary>
        /// Obtiene la lista de propiedades
        /// </summary>
        /// <returns></returns>
        public List<Propiedad> getListaPropiedades()
        {
            return _listaPropiedades;
        }
        /// <summary>
        /// Setea el index de la lista de propiedades
        /// </summary>
        /// <param name="pindex"></param>
        public void setIndex(int pindex)
        {
            index = pindex;
        }

        /// <summary>
        /// Obtiene el index actual de la lista de propiedades
        /// </summary>
        /// <returns></returns>
        public int getIndex()
        {
            if (_listaPropiedades == null)
            {
                return -1;
            }
            else
            {
                return index;
            }
        }


    }
}