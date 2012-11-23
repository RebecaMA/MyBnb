using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;
using MyBnb.LibreriaClases;

namespace MyBnb.Controller
{
    public class ControllerWishList
    {
        WishList _wishlist;

        public ControllerWishList()
        {
            _wishlist = new WishList();
        }

        /// <summary>
        /// Llama a la logica de wishlist para que se realice una recomendacion
        /// Le ingresa el login del usuario al que le quiero hacer una recomendacion 
        /// De controller usuario y controller propiedad obtiene la informacion del usuario actual 
        /// y de la propiedad correspondiente. 
        /// </summary>
        /// <param name="pLoginRecomendado"></param>
        /// <returns></returns>
        public String realizarRecomendacion(String pLoginRecomendado)
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            int index = _controllerPropiedades.getIndex();
            int idPropiedad = _controllerPropiedades.obtenerIdPropiedad(index);
            return _wishlist.realizarRecomendacion(_controllerUsuario.getLogin(), pLoginRecomendado,idPropiedad);
        }

        /// <summary>
        /// Llama a la logica de wishlist para que se realice un nuevo ingreso a wishlist
        /// Le ingresa el login del usuario al que le quiero hacer una recomendacion 
        /// De controller usuario y controller propiedad obtiene la informacion del usuario actual 
        /// y de la propiedad correspondiente. 
        /// Le ingresa como parametro la prioridad de la lista
        /// </summary>
        /// <param name="pPrioridad"></param>
        /// <returns></returns>
        public String ingresarWishlist(String pPrioridad)
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            int index = _controllerPropiedades.getIndex();
            int idPropiedad = _controllerPropiedades.obtenerIdPropiedad(index);
            return _wishlist.ingresarWhislist(idPropiedad.ToString(),_controllerUsuario.getLogin(),pPrioridad);
        }

        /// <summary>
        /// Llama a la logica de wishlist obtenerPrioridad y obtiene una lista de string con todas las prioridades
        /// posibles para el wishlist
        /// </summary>
        /// <returns></returns>
        public List<String> obtenerPrioridad()
        {
            return _wishlist.obtenerPrioridad();
        }

        /// <summary>
        /// Llama a la logica de wishlist para mostrar todas las propiedades del whislist en la lista del usuario
        /// Con controller usuario obtiene la informacion del login del usuario actual.
        /// </summary>
        /// <returns></returns>
        public List<Wishlist> mostrarWishlist()
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            return _wishlist.mostrarWishlist(_controllerUsuario.getLogin());
        }

        /// <summary>
        /// Llama wishlist para cambiar el estado de la recomendacion a aceptada o rechazada. 
        /// Envia los parametros del index de la recomendacion así como el Estado nuevo y el login del usuario.
        /// </summary>
        /// <param name="pindex"></param>
        /// <param name="pestadoRecomendacion"></param>
        public void cambiarEstadoRecomendacion(int pindex, String pestadoRecomendacion)
        {
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            _wishlist.cambiarEstadoRecomendacion(pindex, pestadoRecomendacion,_controllerUsuario.getLogin());
        }

        public void obtenerPropiedadesWishList()
        { 
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades();
            _controllerPropiedades.obtenerPropiedades("Mostrar Propiedades Wishlist",new String[1]{_controllerUsuario.getLogin()} );
        }
    }
}