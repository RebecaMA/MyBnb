using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBnb.Controller;

namespace MyBnb.GUI
{
    public partial class MyBnB_RealizarComentario : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Comentar_Click(object sender, EventArgs e)
        {
            ControllerComentario _controllerComentario = new ControllerComentario();
            int indexRanking = int.Parse(RadioButtonListRanking.SelectedValue.ToString());

            _controllerComentario.realizarComentario(indexRanking, TextBoxComentario.Text);



        }


    }
}