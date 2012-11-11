using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.LibreriaClases
{
    public class Propiedad
    {
        private int idPropiedad;
        private String titulo;
        private int cantidadMaximaPersonas;
        private String descripcion;
        private String horaEntrada;
        private String horaSalida;
        private float precioNoche;
        private int cantidadMinimaNoches;

        public int CantidadMinimaNoches
        {
            get { return cantidadMinimaNoches; }
            set { cantidadMinimaNoches = value; }
        }

        public float PrecioNoche
        {
            get { return precioNoche; }
            set { precioNoche = value; }
        }

        public String HoraSalida
        {
            get { return horaSalida; }
            set { horaSalida = value; }
        }

        public String HoraEntrada
        {
            get { return horaEntrada; }
            set { horaEntrada = value; }
        }

        public String Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public int CantidadMaximaPersonas
        {
            get { return cantidadMaximaPersonas; }
            set { cantidadMaximaPersonas = value; }
        }

        public String Titulo
        {
            get { return titulo; }
            set { titulo = value; }
        }


        public int IdPropiedad
        {
            get { return idPropiedad; }
            set { idPropiedad = value; }
        }
    }
}