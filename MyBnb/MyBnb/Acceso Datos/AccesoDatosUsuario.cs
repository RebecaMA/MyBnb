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
    }
}