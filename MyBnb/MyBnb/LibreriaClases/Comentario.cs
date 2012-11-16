using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.LibreriaClases
{
    public class Comentario
    {
        private String descripcionComentario;
        private String login;
        private int idPropiedad;
        private int ranking;
        private String fechaComentario;

        public String FechaComentario
        {
            get { return fechaComentario; }
            set { fechaComentario = value; }
        }

        public int Ranking
        {
            get { return ranking; }
            set { ranking = value; }
        }

        public int IdPropiedad
        {
            get { return idPropiedad; }
            set { idPropiedad = value; }
        }

        public String Login
        {
            get { return login; }
            set { login = value; }
        }

        public String DescripcionComentario
        {
            get { return descripcionComentario; }
            set { descripcionComentario = value; }
        }


    }
}