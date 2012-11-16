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
        private String tipoPropiedad;
        private String tipoHospedaje;
        private String localidad;
        private float precioVolumen;
        private int ranking;

        public int Ranking
        {
            get { return ranking; }
            set { ranking = value; }
        }

        public float PrecioVolumen
        {
            get { return precioVolumen; }
            set { precioVolumen = value; }
        }

        public String Localidad
        {
            get { return localidad; }
            set { localidad = value; }
        }

      



        public String TipoHospedaje
        {
            get { return tipoHospedaje; }
            set { tipoHospedaje = value; }
        }

        public String TipoPropiedad
        {
            get { return tipoPropiedad; }
            set { tipoPropiedad = value; }
        }


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