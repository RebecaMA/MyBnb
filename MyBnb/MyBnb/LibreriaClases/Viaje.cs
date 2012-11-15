using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.LibreriaClases
{
    public class Viaje
    {
        private String fechaSalida; 
        private String fechaEntrada;
        private String login;
        private String titulo;
        private String codigoLocalidad;

        public String CodigoLocalidad
        {
            get { return codigoLocalidad; }
            set { codigoLocalidad = value; }
        }

        public String Titulo
        {
            get { return titulo; }
            set { titulo = value; }
        }

        public String Login
        {
            get { return login; }
            set { login = value; }
        }

        public String FechaEntrada
        {
            get { return fechaEntrada; }
            set { fechaEntrada = value; }
        }

        public String FechaSalida
        {
            get { return fechaSalida; }
            set { fechaSalida = value; }
        }
       
    }
}