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
        static String _login, _contraseña;
      
        public ControllerUsuario() 
        {

        }

        public ControllerUsuario(String plogin,String pcontraseña) 
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
        public String getLogin()
        {
            return _login;
        }

        public String getContraseña()
        {
            return _contraseña;
        }
    }
}