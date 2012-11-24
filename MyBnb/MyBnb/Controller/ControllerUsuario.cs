using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;

namespace MyBnb.Controller
{
    public class ControllerUsuario
    {
        Usuarios _usuario;
        static String _login, _contraseña, _tipoUsuario;


        /// <summary>
        /// Controla el caso de uso de gestionar usuario
        /// </summary>
        public ControllerUsuario()
        {
            _usuario = new Usuarios();
        }

        /// <summary>
        /// Pone el login del usuario y la contraseña y el tipo de usuario
        /// Setea los valores estáticos
        /// </summary>
        /// <param name="plogin"></param>
        /// <param name="pcontraseña"></param>
        /// <param name="ptipoUsuairo"></param>
        public ControllerUsuario(String plogin, String pcontraseña, String ptipoUsuairo)
        {
            _usuario = new Usuarios();
            _login = plogin;
            _contraseña = pcontraseña;
            _tipoUsuario = ptipoUsuairo;
        }

        /// <summary>
        /// Pone el login del usuario y la contraseña y el tipo de usuario
        /// Setea los valores estáticos
        /// </summary>
        /// <param name="plogin"></param>
        /// <param name="pcontraseña"></param>
        public ControllerUsuario(String plogin, String pcontraseña)
        {
            _usuario = new Usuarios();
            _login = plogin;
            _contraseña = pcontraseña;
        }


        /// <summary>
        /// Se encarga de llamar a registrar usuario
        /// </summary>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public String registrarUsuario(String[] pdatos)
        {
            return _usuario.registarUsuario(pdatos);
        }

        /// <summary>
        /// Se encarga de autentificar a los usuarios
        /// </summary>
        /// <returns></returns>
        public String autentificarUsuario()
        {
            return _usuario.autentificarUsuario(_login, _contraseña);
        }

        /// <summary>
        /// Se encarga de modificar el usuario
        /// </summary>
        /// <param name="pdatos"></param>
        public void modificarUsuario(String[] pdatos)
        {
            _usuario.modificarUsuario(pdatos);
        }

        /// <summary>
        /// Devuelve la lista de login de los usuarios menos del usuario loggeado
        /// </summary>
        /// <returns></returns>
        public List<String> seleccionarUsuario()
        {
            return _usuario.seleccionarUsuario(_login);
        }

        #region
        public String getLogin()
        {
            return _login;
        }

        public String getContraseña()
        {
            return _contraseña;
        }

        public void setLogin(String plogin)
        {
            _login = plogin;
        }

        public void setTipoUsuario(String pTipoUsuario)
        {
            _tipoUsuario = pTipoUsuario;
        }

        public String getTipoUsuairo()
        {
            return _tipoUsuario;
        }

        #endregion
       

    }
}