using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MyBnb.LibreriaClases;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatosWishlist
    {
        AccesoDatos _accesoDatos;

        public AccesoDatosWishlist()
        {
            _accesoDatos = new AccesoDatos();
        }

        /// <summary>
        /// Enlista la recomendacion creada por el usuario que recomienda, la recomendacion ingresa como estado de en Espera
        /// </summary>
        /// <param name="pdatos"></param>
        /// <returns></returns>
        public String realizarRecomendacion(String[] pdatos)
        {
            String[] _nombreParametros = new String[3] { "@pidPropiedad", "@pLoginRecomienda", "pLoginRecomendado" };
             _accesoDatos.escribirDB("sprealizarRecomendacion", _nombreParametros, pdatos);
            
                return "Error en la recomendación";
            

        }

        /// <summary>
        /// Obtiene las prioridades del wishlist, llama al store procedure spObtenerPrioridad y devuelve una lista de String
        /// con todos las Prioridades posibles de las listas de wishlist
        /// </summary>
        /// <returns></returns>
        public List<String> obtenerPrioridad()
        {
            IDataReader _reader = _accesoDatos.leer("spObtenerPrioridad");
            List<String> _listaString = new List<String>();

            while (_reader.Read())
            {
                _listaString.Add(_reader.GetString(0));
                    
            }

            return _listaString;
        }
        
        /// <summary>
        /// Agrega la propiedad al wishlist del usuario, si la propiedad estaba en el whislist anteriormente 
        /// envia un mensaje de error de lo contrario la agrega. 
        /// Llama al store procesure spingresarWishlist
        /// </summary>
        /// <param name="pidPropiedad"></param>
        /// <param name="pLogin"></param>
        /// <returns></returns>
        public String ingresaraWishlist(String pidPropiedad, String pLogin,String pPrioridad)
        {

            String[] _nombreParametros = new String[3] { "@pLoginUsuario","@pidpropiedad","@pPrioridad" };
            IDataReader _reader = _accesoDatos.leer("spagregarWishListUsuario", _nombreParametros,pLogin,pidPropiedad, pPrioridad);

            if (_reader.Read())
            {
                return _reader.GetString(0);
            }
            else return "Error a la hora del ingreso";
        }

        /// <summary>
        /// Retorna las propiedades que estan en la lista del wishlist del usuario que corresponda el nombre de login
        /// Retorna la informacion en una lista de la clase wishlist. Llama al store procedure spmostrarWishList para 
        /// obtener los datos de la base. 
        /// </summary>
        /// <param name="pLogin"></param>
        /// <returns></returns>
        public List<Wishlist> mostrarWishlist(String pLogin)
        {
            List<Wishlist> _listaWishList = new List<Wishlist>();
            IDataReader _reader = _accesoDatos.leer("spmostrarWishList", new String[1] { "@pLogin" }, pLogin);

            while (_reader.Read())
            {
                Wishlist wishlist = new Wishlist();
                wishlist.Titulo = _reader.GetString(0);
                wishlist.Prioridad = _reader.GetString(1);
                wishlist.UsuarioRecomendo = _reader.GetString(2);
                Object objeto = _reader.GetValue(3);
                wishlist.IdRecomendacion = int.Parse(objeto.ToString());
                wishlist.Tipo = _reader.GetString(4);
                _listaWishList.Add(wishlist);
                wishlist.EstadoRecomendacion = _reader.GetString(5);

            }

            return _listaWishList;

        }

        /// <summary>
        /// Cambia el estado de la lista de recomendacion, es decir Aceptada o Rechazada 
        /// </summary>
        /// <param name="pidRecomendacion"></param>
        /// <param name="pestadoRecomendacion"></param>
        public void cambiarEstadoRecomendacion(String pidRecomendacion, String pestadoRecomendacion)
        {
            String[] _nombreParametros = new String[2] { "@pidRecomendacion", "@pEstadoRecomendacion" };
            _accesoDatos.escribirDB("spcambiarEstadoRecomendacion", _nombreParametros, pidRecomendacion, pestadoRecomendacion);
        }

        

       
    }
}