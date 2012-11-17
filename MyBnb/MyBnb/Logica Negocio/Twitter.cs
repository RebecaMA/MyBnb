using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Twitterizer;

namespace MyBnb.Logica_Negocio
{
    public class Twitter
    {
      
        /// <summary>
        /// Encargado de realizar la comunicacion con Twitter, retorna el estado de la comunicación.
        /// </summary>
        /// <returns>String</returns>
        public String realizarPublicacion(String ppublicacion)
        {
            OAuthTokens tokens = new OAuthTokens();
            tokens.AccessToken = "945202254-VURJ7ThR4oIveobJUYwAsSIlrbatkiVwMOqy25fK";
            tokens.AccessTokenSecret = "dMpK86r6Aowo8ERZnnJzYxwMCJv8BzUJwOJWQe6fLA";
            tokens.ConsumerKey = "HH5kArUt5TEPUGFi3Zi7eg";
            tokens.ConsumerSecret = "bFGOTkU0TpHFGu2JsBx1FdqnKisnfFtNAtUGcRZYgU";

            TwitterResponse<TwitterStatus> tweetResponse = TwitterStatus.Update(tokens, ppublicacion);
            if (tweetResponse.Result == RequestResult.Success)
            {
                return "Publicacion Realizada";
            }
            else
            {
                return "Problemas con la comunicacion con Twitter";
            }
        }
    }
}