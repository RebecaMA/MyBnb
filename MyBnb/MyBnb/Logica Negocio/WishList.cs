using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Acceso_Datos;
using MyBnb.LibreriaClases;
using MyBnb.Controller;

namespace MyBnb.Logica_Negocio
{
    public class WishList
    {

        AccesoDatosWishlist _accesoDatosWishlist;
        static List<Wishlist> _listaWishList;
  

        public WishList()
        {
            _accesoDatosWishlist = new AccesoDatosWishlist();
        }
        /// <summary>
        /// Lista la recomendacion, llamando a Acceso Datos Propiedad, como parametros le ingresa los 
        /// Login del usuario que recomienda y el que recibe la recomendacion
        /// </summary>
        /// <param name="pLoginRecomienda"></param>
        /// <param name="pLoginRecomendado"></param>
        /// <returns></returns>
        public String realizarRecomendacion(String pLoginRecomienda, String pLoginRecomendado,int pidPropiedad)
        {
            String[] _datos = new String[3] { pidPropiedad.ToString(), pLoginRecomienda, pLoginRecomendado };
            return _accesoDatosWishlist.realizarRecomendacion(_datos);
        }
        /// <summary>
        /// Llama a acceso datos para que ingrese los datos del whislist con la informacion brindada en los parametros
        /// de pidPropiedad es el id de la propiedad a ingresar, pLogin el login del usuario actual. 
        /// </summary>
        /// <param name="pidPropiedad"></param>
        /// <param name="pLogin"></param>
        /// <returns></returns>
        public String ingresarWhislist(String pidPropiedad,String pLogin,String pPrioridad)
        {
            return _accesoDatosWishlist.ingresaraWishlist(pidPropiedad, pLogin,pPrioridad);
        }

        /// <summary>
        /// Llama acceso de datos y obtiene las prioridades en las que se puede categorizar la lista de whislist
        /// </summary>
        /// <returns></returns>
        public List<String> obtenerPrioridad()
        {
            return _accesoDatosWishlist.obtenerPrioridad();
        }

        /// <summary>
        /// Llama a acceso de datos y obtiene la lista de wishlist del usuario
        /// </summary>
        /// <param name="pLogin"></param>
        /// <returns></returns>
        public List<Wishlist> mostrarWishlist(String pLogin)
        {
            _listaWishList = _accesoDatosWishlist.mostrarWishlist(pLogin);
            return _listaWishList;
        }

        /// <summary>
        /// Obtiene el id de la recomendacion que coincide con el index en la lista de wishlist y lo envia 
        /// junto con el estado de la recomendacion al acceso de datos para realizar el cambio en la base de datos
        /// </summary>
        /// <param name="pindex"></param>
        /// <param name="pEstadoRecomendacion"></param>
        public void cambiarEstadoRecomendacion(int pindex, String pestadoRecomendacion,String pLogin)
        {
            ControllerTwitter _controllerTwitter = new ControllerTwitter();
            int idRecomendacion = _listaWishList.ElementAt(pindex).IdRecomendacion;
            _accesoDatosWishlist.cambiarEstadoRecomendacion(idRecomendacion.ToString(), pestadoRecomendacion);
            if (pestadoRecomendacion.Equals("Aceptada"))
            {
                String comentario = pLogin + " acepto recomendación de " + _listaWishList.ElementAt(pindex).UsuarioRecomendo + " con la propiedad llamada " + _listaWishList.ElementAt(pindex).Titulo;
                _controllerTwitter.realizarPublicacion(comentario);
            }
        }

        
    }
}