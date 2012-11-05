﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;

namespace MyBnb.Controller
{
    public class ControllerUsuario
    {
        Usuario _usuario = new Usuario();
        static String _login, _contraseña;

       

        public ControllerUsuario() { }
        public ControllerUsuario(String plogin,String pcontraseña) 
        {
            _login = plogin;
            _contraseña = pcontraseña;
        }

        // Aqui nc si tiene q armar los objetos el controller o el usuario

        public String registrarUsuario(String[] pdatos) 
        {
            return _usuario.registarUsuario(pdatos);
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