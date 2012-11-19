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



        public ControllerUsuario()
        {
            _usuario = new Usuarios();
        }

        public ControllerUsuario(String plogin, String pcontraseña, String ptipoUsuairo)
        {
            _usuario = new Usuarios();
            _login = plogin;
            _contraseña = pcontraseña;
            _tipoUsuario = ptipoUsuairo;
        }

        public ControllerUsuario(String plogin, String pcontraseña)
        {
            _usuario = new Usuarios();
            _login = plogin;
            _contraseña = pcontraseña;
        }



        public String registrarUsuario(String[] pdatos)
        {
            return _usuario.registarUsuario(pdatos);
        }

        public String autentificarUsuario()
        {
            return _usuario.autentificarUsuario(_login, _contraseña);
        }

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