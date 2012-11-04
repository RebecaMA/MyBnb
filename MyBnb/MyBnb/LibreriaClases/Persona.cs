using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBnb.LibreriaClases
{
    public class Persona
    {
        private String nombre;
        private String apellido;
        private String fechaNacimiento;
        private String email;
        private String telefono;
        private String genero;
        private String pais;


        // Gets y Sets
        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }


        public String Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        public String FechaNacimiento
        {
            get { return fechaNacimiento; }
            set { fechaNacimiento = value; }
        }


        public String Email
        {
            get { return email; }
            set { email = value; }
        }


        public String Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }


        public String Genero
        {
            get { return genero; }
            set { genero = value; }
        }


        public String Pais
        {
            get { return pais; }
            set { pais = value; }
        }
    
    }
}