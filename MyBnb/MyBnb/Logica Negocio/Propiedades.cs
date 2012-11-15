using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;
using MyBnb.LibreriaClases;

namespace MyBnb.Logica_Negocio
{
    public class Propiedades
    {
        AccesoDatosPropiedad _accesoDatosPropiedad;
        static List<Propiedad> _listaPropiedades;
        public Propiedades()
        {
            _accesoDatosPropiedad = new AccesoDatosPropiedad();
           // _listaPropiedades = new List<Propiedad>();

        }

        public String[] obtenerPropiedades(String ptipoBusqueda, String[] pdatos)
        {
            String[] _informacionPropiedades = null;


            String[] _split = pdatos[2].Split(' ');
            pdatos[2] = _split[0];
            _listaPropiedades = _accesoDatosPropiedad.obtenerPropiedades(ptipoBusqueda, pdatos);
          //  _informacionPropiedades = new String[_listaPropiedades.Count];
            _informacionPropiedades = new String[3];


            _listaPropiedades.ForEach(delegate(Propiedad ppropiedad)
            {
                _informacionPropiedades[0] = ppropiedad.Titulo;
                _informacionPropiedades[1] = ppropiedad.PrecioNoche.ToString();
                _informacionPropiedades[2] = ppropiedad.TipoHospedaje;
            });

            return _informacionPropiedades;

        }

        public List<String> obtenerTipo(String pTipo)
        {
            return _accesoDatosPropiedad.obtenerTipo(pTipo);
        }

        public int obtenerId(int pindex) 
        {
            return _listaPropiedades.ElementAt(pindex).IdPropiedad;
        }

      

        public String listarPropiedad(String[] pdatos)
        {
            String _retorno = null;
            float _numero;
            String[] _split;
            int _horaEntrada, _HoraSalida;
            String _tiempoEntrada, _tiempoSalida;

            if (!float.TryParse(pdatos[1],out _numero))
            {
                _retorno = "Capacidad debe ser número";
            }
            else if ((!float.TryParse(pdatos[9], out _numero)) ||(!float.TryParse(pdatos[10], out _numero)))
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
                _horaEntrada =  Int32.Parse(_split[0]);
                _tiempoEntrada = _split[1];
                _split = pdatos[6].Split(' ');
                _HoraSalida = Int32.Parse(_split[0]);
                _tiempoSalida = _split[1];

                if (_tiempoEntrada.Equals("PM"))
                {
                    pdatos[5] = (_horaEntrada + 12) + ":00";
                }
                else { pdatos[5] = _horaEntrada+ ":00"; }
                if (_tiempoSalida.Equals("PM"))
                {
                    pdatos[6] = (_HoraSalida + 12) + ":00";
                }
                else { pdatos[6] = _HoraSalida + ":00"; }

                _split = pdatos[7].Split(' ');

                pdatos[7] = _split[0];

                _retorno = _accesoDatosPropiedad.listarPropiedad(pdatos);
            }

            return _retorno;
            
        }



    }
}