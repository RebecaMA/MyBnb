using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.LibreriaClases;
using System.Data;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosUsuario
    {
        AccesoDatos _accesoDatos = new AccesoDatos();
        public AccesoDatosUsuario() { }

        /// <summary>
        /// Registra un usuario nuevo a la base de datos, como parametros los datos de usuario y persona
        /// Llama al spRegistarUsuario
        /// </summary>
        /// <param name="pusuario"></param>
        /// <param name="ppersona"></param>
        /// <returns></returns>
        public String registrarUsuario(Usuario pusuario, Persona ppersona)
        {
            String _retorno = null;
            String[] _nombreparametros = new String[12]{"@pnombre","@papellido","@pfechaNacimiento","@pemail",
                                                        "@ptelefono","@pgenero","@ppais","@plogin","@ppassword",
                                                         "@pfechaInscripcion","@descripcion","@ptipousuario"};

            _accesoDatos.escribirDB("spcrearUsuario", _nombreparametros, ppersona.Nombre, ppersona.Apellido,
                                                    ppersona.FechaNacimiento, ppersona.Email, ppersona.Telefono, ppersona.Genero,
                                                    ppersona.Pais, pusuario.Login, pusuario.Password, pusuario.FechaInscripcion,
                                                    pusuario.Descripcion, pusuario.TipoUsuario);

            _retorno = "Usuario Creado";
            return _retorno;
        }

        /// <summary>
       /// Identifica si el usuario con los datos de login y contraseña se encuentran en la base
       /// Devuelve un string con el tipo de usuario o error.
        /// </summary>
        /// <param name="plogin"></param>
        /// <param name="pcontrasseña"></param>
        /// <returns></returns>
        public String auntentificarUsuario(String plogin, String pcontrasseña)
        {
            String[] _nombreparametros = new String[2] { "@pusuario", "@ppassw" };

            IDataReader reader = _accesoDatos.leer("spautentificarUsuario", _nombreparametros, plogin, pcontrasseña);
            String retorno = null;
            if (reader.Read())
            {
                retorno = reader.GetString(0);
            }
            return retorno;
        }

        public void modificarUsuario(String[] pdatos)
        {
            String[] _nombreparametros = new String[12] {"@pusuario","@plogin","@ppassword","@descripcion","@pnombre",
                                                        "@papellido","@pfechaNacimiento","@pemail","@ptelefono","@pgenero","@ppais","@pestadoUsuario" };

            _accesoDatos.escribirDB("spmodificarUsuario", _nombreparametros, pdatos);
        }

        /// <summary>
        /// Retorna una lista de login de los usuarios viajeros menos el usuario con el login especificado, 
        /// llama al spseleccionarUsuarios
        /// </summary>
        /// <param name="plogin"></param>
        /// <returns></returns>
        public List<String> seleccionarUsuarios(String plogin)
        {
            IDataReader _reader = _accesoDatos.leer("spseleccionarUsuarios", new String[] { "@pLogin" }, plogin);
            List<String> _listaLogin = new List<String>();
            while (_reader.Read())
            {
                _listaLogin.Add(_reader.GetString(0));
            }
            return _listaLogin;
        }
    }
}