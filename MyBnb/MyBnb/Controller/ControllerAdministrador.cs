using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;


namespace MyBnb.Controller
{
    public class ControllerAdministrador
    {
        Administrador _administrador;

        public ControllerAdministrador()
        {
            _administrador = new Administrador();
        }

        public String crearCategoria(String pcategoria, String pdescripcion)
        {
            return _administrador.crearCategoria(pcategoria, pdescripcion);
        }
    }
}