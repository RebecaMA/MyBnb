using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;
namespace MyBnb.Controller
{
    public class ControllerTwitter
    {
        Twitter _twitter;

        public ControllerTwitter()
        {
            _twitter = new Twitter();
        }

        public String realizarPublicacion(String ppublicacion)
        {            
           return _twitter.realizarPublicacion(ppublicacion);
        }
    }
}