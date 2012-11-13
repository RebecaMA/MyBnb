using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Controller;
using MyBnb.Logica_Negocio;

namespace MyBnb.Controller
{
    public class ControllerViaje
    {
        Viaje _viaje = new Viaje();
        public ControllerViaje() { }

        public void reservarViaje(String[] pdatos)
        {
            _viaje.reservarViaje(pdatos);
        }

        
    }
}