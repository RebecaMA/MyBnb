using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.LibreriaClases;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosUsuario
    {
        AccesoDatos _accesoDatos = new AccesoDatos();
        public AccesoDatosUsuario() { }

        public String registrarUsuario(Usuarios pusuario, Persona ppersona)
        {
            String _retorno = null;
            String[] _nombreparametros = new String[12]{"@pnombre","@papellido","@pfechaNacimiento","@pemail",
                                                        "@ptelefono","@pgenero","@ppais","@plogin","@ppassword",
                                                         "@pfechaInscripcion","@descripcion","@ptipousuario"};

            Boolean _bool = _accesoDatos.escribir("spcrearUsuario", _nombreparametros, ppersona.Nombre, ppersona.Apellido,
                                                     ppersona.FechaNacimiento, ppersona.Email, ppersona.Telefono, ppersona.Genero,
                                                     ppersona.Pais, pusuario.Login, pusuario.Password, pusuario.FechaInscripcion,
                                                     pusuario.Descripcion, pusuario.TipoUsuario);
            if (_bool)
            {
                _retorno = "Usuario Creado";
            }
            else
                _retorno = "No se pudo crear el usuario";

            return _retorno;
        }
    }
}