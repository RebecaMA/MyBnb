<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Propiedades.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Propiedades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel_Propiedades" runat="server" Height="559px" 
        HorizontalAlign="Left" Width="963px" BackColor="#EEEEEE" 
        style="margin-left: 0px; margin-right: 0px; margin-top: 0px;" >        
        
    

    <table style="width: 923px; height: 546px;">
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
        <asp:Button ID="Button_Comentar_Propiedades" runat="server" 
            BackColor="#671160" ForeColor="White" Height="30px"             
            style="margin-left: 0px; margin-top: 10px;" Text="Comentar" Width="90px" 
            onclick="Button_Comentar_Propiedades_Click" />

        <asp:Button ID="Button_Recomendar_Propiedades" runat="server" 
            BackColor="#7AB428" ForeColor="White" Height="30px"             
            style="margin-left: 10px; margin-top: 10px;" Text="Recomendar" 
            Width="90px" onclick="Button_Recomendar_Propiedades_Click" />

        <br />
        <asp:Button ID="Button_Reservar_Propiedades" runat="server" 
            BackColor="#7AB428" ForeColor="White" Height="30px"             
            style="margin-left: 0px; margin-top: 10px;" Text="Reservar" Width="90px" onclick="Button_Reservar_Propiedades_Click" 
           />

        <asp:Button ID="Button_Wishlist_Propiedades" runat="server" 
            BackColor="#671160" ForeColor="White" Height="30px"             
            style="margin-left: 10px; margin-top: 10px" Text="WishList" 
            Width="90px" onclick="Button_Wishlist_Propiedades_Click" />
        
        <br />
        
        </td>    
    <td class="rightColumn" align="center"> 
    <asp:Panel ID="Panel_Descripcion" runat="server" Height="531px" 
            HorizontalAlign="Justify" Width="638px">
        &nbsp;
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Descripcion"></asp:Label>
        <br />
        <hr />
        <asp:Label ID="Label_Titulo" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Titulo:" />
        &nbsp;
        <asp:Label ID="Label_PTitulo" runat="server" 
            
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_Localidad" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Localidad:" />
        <asp:Label ID="Label_PLocalidad" runat="server" 
            
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_Descripcion" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Descripcion:" />
        <asp:Label ID="Label_PDescripcion" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? "></asp:Label>
        <br />

        <br />
        <asp:Label ID="Label_Tipo" runat="server" Text="Tipo:"
                style="margin-left: 10px; margin-top: 30px;" Font-Bold="True"/>

        &nbsp;
        <asp:Label ID="Label_PTipo" runat="server" 
            
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        &nbsp; &nbsp;
        <br />
        <br />
        <asp:Label ID="Label_Hospedaje" runat="server" Text="Hospedaje:"
                style="margin-left: 10px; margin-top: 30px;" Font-Bold="True"/>

        &nbsp;
        <asp:Label ID="Label_PHospedaje" runat="server" 
            
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;<hr />&nbsp;<asp:Label ID="Label_Capacidad" runat="server" 
            Font-Bold="True" style="margin-left: 10px; margin-top: 30px;" 
            Text="Capacidad:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PCapacidad" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraEntrada" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Hora Entrada:" />
        <asp:Label ID="Label_PHoraE" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraSalida" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Hora Salida:" />
        <asp:Label ID="Label_PHoraSalida" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;<hr />&nbsp;<asp:Label ID="Label_PrecioNoche" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Precio Noche:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PPrecioNoche" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_PrecioVolumen" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Precio Volumen:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PPrecioVolumen" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? "></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_NochesMinima" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Noches Minimas: " />
&nbsp;&nbsp;<asp:Label ID="Label_PNochesMinima" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? "></asp:Label>                  
        </asp:Panel>       

        </td>
    </tr>
    <tr>
    <asp:GridView ID="GridViewComentarios" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="login" HeaderText="Usuario" SortExpression="login" />
            <asp:BoundField DataField="descripcionComentario" HeaderText="Comentario" 
                SortExpression="descripcionComentario" />
            <asp:BoundField DataField="ranking" HeaderText="Calificación" 
                SortExpression="ranking" />
            <asp:BoundField DataField="fechaComentario" HeaderText="Fecha " 
                SortExpression="fechaComentario" />
        </Columns>
        </asp:GridView>
    </tr>
    </table>
    </asp:Panel>
</asp:Content>
