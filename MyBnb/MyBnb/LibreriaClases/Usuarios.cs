using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.LibreriaClases
{
    public class Usuarios
    {
        private String login;
        private String password;
        private String fechaInscripcion;
        private String descripcion;
        private String tipoUsuario;
        private int idPersona;

        public int IdPersona
        {
            get { return idPersona; }
            set { idPersona = value; }
        }

        public String TipoUsuario
        {
            get { return tipoUsuario; }
            set { tipoUsuario = value; }
        }

        public String Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public String FechaInscripcion
        {
            get { return fechaInscripcion; }
            set { fechaInscripcion = value; }
        }

        public String Password
        {
            get { return password; }
            set { password = value; }
        }


        public String Login
        {
            get { return login; }
            set { login = value; }
        }
    }
}