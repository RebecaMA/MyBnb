using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.LibreriaClases
{
    public class Wishlist
    {
        private String titulo;
        private String prioridad;
        private String usuarioRecomendo;
        private int idRecomendacion;
        private String tipo;
        private String estadoRecomendacion;

        public String EstadoRecomendacion
        {
            get { return estadoRecomendacion; }
            set { estadoRecomendacion = value; }
        }

        public String Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }

        public int IdRecomendacion
        {
            get { return idRecomendacion; }
            set { idRecomendacion = value; }
        }

        public String UsuarioRecomendo
        {
            get { return usuarioRecomendo; }
            set { usuarioRecomendo = value; }
        }

        public String Prioridad
        {
            get { return prioridad; }
            set { prioridad = value; }
        }

        public String Titulo
        {
            get { return titulo; }
            set { titulo = value; }
        }
    }
}