<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Propiedades.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Propiedades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 321px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel_Propiedades" runat="server" Height="812px" 
        HorizontalAlign="Left" Width="963px" BackColor="#EEEEEE" 
        style="margin-left: 0px; margin-right: 0px; margin-top: 0px;" >        
        
    

    <table style="width: 960px; height: 476px;">
    <tr>
    <td class="leftColumn" align="center">                 
        <asp:Panel ID="Panel_Imagen" runat="server" Height="225px" 
            HorizontalAlign="Center" BorderStyle="None">
            <asp:Image ID="Image_Propiedad" runat="server" Height="225px" Width="225px" 
                ImageUrl="~/Images/casa.jpg" />            
        </asp:Panel>
        
        <asp:ImageButton ID="ImageButtonAnterior" runat="server" Height="20px" 
            ImageUrl="~/Images/Preview.png" Width="30px" 
            style="margin-left: 0px; margin-top: 10px;" 
            onclick="ImageButtonAnterior_Click"/>
        
        <asp:ImageButton ID="ImageButtonSiguiente" runat="server" Height="20px" 
            ImageUrl="~/Images/Next.png" Width="30px"
            style="margin-left: 30px; margin-top: 10px;" 
            onclick="ImageButtonSiguiente_Click"/>
        
        <br /> <br />

        <asp:Button ID="Button_Recomendar_Propiedades" runat="server" 
            BackColor="#7AB428" ForeColor="White" Height="30px"             
            style="margin-left: 10px; margin-top: 10px;" Text="Recomendar" 
            Width="90px" onclick="Button_Recomendar_Propiedades_Click" />

        <br />
        <asp:Button ID="Button_Reservar_Propiedades" runat="server" 
            BackColor="#7AB428" ForeColor="White" Height="30px"             
            style="margin-left: 0px; margin-top: 10px;" Text="Reservar" Width="90px" onclick="Button_Reservar_Propiedades_Click" 
           />

        <br />
        
        </td>    
    <td class="rightColumn" align="center"> 
    <asp:Panel ID="Panel_Descripcion" runat="server" Height="448px" 
            HorizontalAlign="Justify" Width="638px">
        &nbsp;
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Descripcion"></asp:Label>
        <br />
        <hr />
        <asp:Label ID="Label_Titulo" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Titulo:" />
        &nbsp;
        <asp:Label ID="Label_PTitulo" runat="server"> titulo</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_Localidad" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Localidad:" />

        &nbsp;<asp:Label ID="Label_PLocalidad" runat="server">localidad</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_Descripcion" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Descripcion:" />
        &nbsp;<asp:Label ID="Label_PDescripcion" runat="server">descripcion</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_Tipo" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Tipo:" />
&nbsp;
        <asp:Label ID="Label_PTipo" runat="server">tipo</asp:Label>
        &nbsp; &nbsp;
        <br />
        <br />
        <asp:Label ID="Label_Hospedaje" runat="server" Text="Hospedaje:"
                style="margin-left: 10px; margin-top: 30px;" Font-Bold="True"/>

        &nbsp;
        <asp:Label ID="Label_PHospedaje" runat="server">hospedaje</asp:Label>
        <br />
        &nbsp;<hr />&nbsp;<asp:Label ID="Label_Capacidad" runat="server" 
            Font-Bold="True" style="margin-left: 10px; margin-top: 30px;" 
            Text="Capacidad:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PCapacidad" runat="server">capacidad</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraEntrada" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Hora Entrada:" />
        &nbsp;<asp:Label ID="Label_PHoraE" runat="server">entrada</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraSalida" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Hora Salida:" />
        <asp:Label ID="Label_PHoraSalida" runat="server">salida</asp:Label>
        <br />
        <br />
        <hr />
        &nbsp;<asp:Label ID="Label_PrecioNoche" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Precio Noche:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PPrecioNoche" runat="server">noche</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_PrecioVolumen" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Precio Volumen:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PPrecioVolumen" runat="server">volumen</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_NochesMinima" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Noches Minimas: " />
&nbsp;&nbsp;<asp:Label ID="Label_PNochesMinima" runat="server">minimo</asp:Label>                  
        </asp:Panel>       

        </td>
    </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <br />
        <table style="width: 960px; height: 317px;">
            <tr>
                <td align="left" class="style1">
                    <br />
                    <asp:Panel ID="Panel4" runat="server" Width="317px" Height="150px">
                        <asp:Label ID="Label_Prioridad" runat="server" 
                            style="margin-left: 10px; margin-top: 10px;" Text="Priodidad:" 
                            Font-Bold="True" />
                        <asp:DropDownList ID="DropDownList_Prioridad_AgregarWishlist" runat="server" 
                            AutoPostBack="True" style="margin-left: 5px; margin-top: 10px;" 
                            Width="209px" Height="16px">
                        </asp:DropDownList>
                        
                        <asp:Button ID="Button_Wishlist_Propiedades" runat="server" BackColor="#671160" 
                            ForeColor="White" Height="30px" onclick="Button_Wishlist_Propiedades_Click" 
                            style="margin-left: 200px; margin-top: 10px" Text="WishList" Width="90px" />                        
                    </asp:Panel>
                    <asp:Panel ID="Panel5" runat="server" Height="150px">
                        </asp:Panel>
                </td>
                <td align="center" class="rightColumn">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:GridView ID="GridViewComentarios" runat="server" style="margin-left: 5px; margin-right: 5px; margin-top: 2px;"
                            AutoGenerateColumns="False" Width="623px">
                            <Columns>
                                <asp:BoundField DataField="login" HeaderText="Usuario" SortExpression="login" >
                                <FooterStyle Width="80px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="descripcionComentario" HeaderText="Comentario" 
                                    SortExpression="descripcionComentario" >
                                <FooterStyle Width="500px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ranking" HeaderText="Calificación" 
                                    SortExpression="ranking" >
                                <FooterStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="fechaComentario" HeaderText="Fecha " 
                                    SortExpression="fechaComentario" >
                                <FooterStyle Width="50px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>                        
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server" Height="189px" HorizontalAlign="Left">
                        
                        <br />
                        
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" 
                            Text="Comentario:" style="margin-top:3px"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxComentario" runat="server" Height="80px" 
                            style="margin-top:6px" TextMode="MultiLine" Width="520px"></asp:TextBox>
                        <br />
                        
                    <asp:RadioButtonList ID="RadioButtonListRanking" runat="server" 
                               BorderStyle="Dotted" BorderWidth="0px" Font-Bold="True" Font-Italic="False" 
                               Font-Size="Small" RepeatDirection="Horizontal" Width="250px">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    </asp:RadioButtonList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label_Comentar" runat="server" Text="5 es el mayor, 1 es el menor"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button_Recomendar_TodosComentarios" runat="server" 
                            BackColor="#7AB428" ForeColor="White" Height="30px" 
                            onclick="Button_Recomendar_TodosComentarios_Click" 
                            style="margin-left: 10px; margin-top: 10px;" Text="Comentarios" Width="90px" />
&nbsp;
                        <asp:Button ID="Button_Comentar_Propiedades" runat="server" BackColor="#671160" 
                            ForeColor="White" Height="30px" onclick="Button_Comentar_Propiedades_Click" 
                            style="margin-left: 0px; margin-top: 10px;" Text="Comentar" Width="90px" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
