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
        AccesoDatosUsuario _accesoDatos;
        public Usuarios()
        {
            _accesoDatos = new AccesoDatosUsuario();
        }

        /// <summary>
        /// Se encarga de realizar el registro de un usuario
        /// </summary>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public String registarUsuario(String[] pdatos)
        {

            Usuario pusuario = new Usuario();
            Persona ppersona = new Persona();
            ppersona.Nombre = pdatos[0];
            ppersona.Apellido = pdatos[1];
            ppersona.FechaNacimiento = pdatos[2];
            ppersona.Email = pdatos[3];
            if (pdatos[4].Equals(""))
            {
                ppersona.Telefono = null;
            }
            else
            {
                ppersona.Telefono = pdatos[4];
            }
            ppersona.Genero = pdatos[5];
            ppersona.Pais = pdatos[6];

            pusuario.Login = pdatos[7];
            pusuario.Password = pdatos[8];
            pusuario.FechaInscripcion = pdatos[9];
            if (pdatos[10].Equals(""))
            {
                pusuario.Descripcion = null;
            }
            else
            {
                pusuario.Descripcion = pdatos[10];
            }

            pusuario.TipoUsuario = pdatos[11];



            return _accesoDatos.registrarUsuario(pusuario, ppersona);

        }

        /// <summary>
        /// Se encarga de autentificar usuario
        /// Regresa el tipo de usuario o error de login
        /// </summary>
        /// <param name="plogin"></param>
        /// <param name="pcontraseña"></param>
        /// <returns></returns>
        public String autentificarUsuario(String plogin, String pcontraseña)
        {
            return _accesoDatos.auntentificarUsuario(plogin, pcontraseña);
        }

        /// <summary>
        /// Modifica los datos del usuario, si los datos del String[] son vacios se setean como nulos
        /// </summary>
        /// <param name="pdatos"></param>
        public void modificarUsuario(String[] pdatos)
        {

            for (int i = 0; i < 12; i++)
            {
                if (pdatos[i].Equals(""))
                {
                    pdatos[i] = null;
                }
            }

            _accesoDatos.modificarUsuario(pdatos);
        }
        /// <summary>
        /// Devuelve una lista de los usuarios viajeros del sistema menos el usuario señalado en login
        /// </summary>
        /// <param name="plogin"></param>
        /// <returns></returns>
        public List<String> seleccionarUsuario(String plogin)
        {
            return _accesoDatos.seleccionarUsuarios(plogin);
        }
    }
}