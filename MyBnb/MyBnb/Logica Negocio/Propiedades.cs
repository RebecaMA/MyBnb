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
            _listaPropiedades = new List<Propiedad>();

        }

        public String[] obtenerPropiedades(String ptipoBusqueda, String[] pdatos)
        {
            String[] _informacionPropiedades = null;
            


            _listaPropiedades = _accesoDatosPropiedad.obtenerPropiedades(ptipoBusqueda, pdatos);
            _informacionPropiedades = new String[_listaPropiedades.Count];


            _listaPropiedades.ForEach(delegate(Propiedad ppropiedad)
            {
                // pongo lo q hay q hacerle a cada propiedad
            });

            return _informacionPropiedades;

        }

        public List<String> obtenerTipo(String pTipo)
        {
            return _accesoDatosPropiedad.obtenerTipo(pTipo);
        }

        public String listarPropiedad(String[] pdatos)
        {
            String _retorno = null;
            float _numero;
            String[] _split;
            int _horaEntrada, _HoraSalida;
            String _tiempoEntrada, _tiempoSalida;

            //_datos[0] = DropDownList_Tipo_ListarPropiedad.SelectedItem.ToString();
            //_datos[1] = TextBox_Capacidad_ListarPropiedad0.Text;
            //_datos[2] = TextBox_Titulo_ListarPropiedad.Text;
            //_datos[3] = TextBox_Descripcion_ListarPropiedad.Text;
            //_datos[4] = null;
            //_datos[5] = DropDownList_HoraEntrada_ListarPropiedad.SelectedItem.ToString() + " " + DropDownList_TiempoEntrada_ListarPropiedad.SelectedItem.ToString();
            //_datos[6] = DropDownList_HoraSalida_ListarPropiedad0.SelectedItem.ToString() + " " + DropDownList_TiempoSalida_ListarPropiedad3.SelectedItem.ToString();
            //_datos[7] = DropDownList_Localidad_Reservar.SelectedItem.ToString();
            //_datos[8] = DropDownList_Hospedaje_ListarPropiedad0.SelectedItem.ToString();
            //_datos[9] = TextBox_PrecioNoche_ListarPropiedad.Text;
            //_datos[10] = TextBox_PrecioVolumen.Text;
            //_datos[11] = TextBox_CantidadNoches.Text;

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