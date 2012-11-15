using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;

namespace MyBnb.Controller
{
    public class ControllerUsuario
    {
        Usuarios _usuario = new Usuarios();
        static String _login, _contraseña, _tipoUsuario;

    
           
        public ControllerUsuario() 
        {

        }

        public ControllerUsuario(String plogin,String pcontraseña,String ptipoUsuairo) 
        {
            _login = plogin;
            _contraseña = pcontraseña;
            _tipoUsuario = ptipoUsuairo;
        }

        public ControllerUsuario(String plogin, String pcontraseña)
        {
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

    }
}