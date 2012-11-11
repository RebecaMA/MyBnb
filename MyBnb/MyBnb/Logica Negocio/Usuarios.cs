using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;
using MyBnb.LibreriaClases;

namespace MyBnb.Logica_Negocio
{
    public class Usuarios
    {
        AccesoDatosUsuario _accesoDatos = new AccesoDatosUsuario();
        public Usuarios() { }

        public String registarUsuario(String[] pdatos)
        {
            
            Usuario pusuario = new Usuario();
            Persona ppersona = new Persona();
            ppersona.Nombre = pdatos[0];
            ppersona.Apellido = pdatos[1];
            ppersona.FechaNacimiento = pdatos[2];
            ppersona.Email = pdatos[3];
            ppersona.Telefono = pdatos[4];
            ppersona.Genero = pdatos[5];
            ppersona.Pais = pdatos[6];

            pusuario.Login = pdatos[7];
            pusuario.Password = pdatos[8];
            pusuario.FechaInscripcion = pdatos[9];
            pusuario.Descripcion = pdatos[10];
            pusuario.TipoUsuario = pdatos[11];

            

            return _accesoDatos.registrarUsuario(pusuario, ppersona);

        }

        public String autentificarUsuario(String plogin, String pcontraseña)
        {
            return _accesoDatos.auntentificarUsuario(plogin, pcontraseña);
        }
    }
}