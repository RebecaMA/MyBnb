using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBnb.Logica_Negocio;

namespace MyBnb.Controller
{
    public class ControllerComentario
    {
        Comentarios _comentarios;

        public ControllerComentario()
        {
            _comentarios = new Comentarios();
        }
        /// <summary>
        /// Registra los comentarios realizados por los usuarios viajeros a una propiedad, tiene como parametros el ranking dado,
        /// el indice de la propiedad para poder asignarle el id y el comentario realizo. 
        /// </summary>
        /// <param name="pindiceRanking"></param>
        /// <param name="pindicePropiedad"></param>
        /// <param name="pcomentario"></param>
        /// <returns></returns>
        public String realizarComentario(int pindiceRanking, String pcomentario)
        {
            String[] _datos;
            ControllerPropiedades _controllerPropiedades = new ControllerPropiedades(true);
            ControllerUsuario _controllerUsuario = new ControllerUsuario();
            int indexPropiedad = _controllerPropiedades.getIndex();
            int idPropiedad = _controllerPropiedades.obtenerIdPropiedad(indexPropiedad);
            String fecha = DateTime.Today.Year + "/" + DateTime.Today.Month + "/" + DateTime.Today.Day;
            _datos = new String[5] { pcomentario, _controllerUsuario.getLogin(), idPropiedad.ToString(), pindiceRanking.ToString(), fecha };
            return _comentarios.realizarComentario(_datos);
        }
    }
}