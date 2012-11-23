<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_PropiedadesAdministrador.aspx.cs" Inherits="MyBnb.GUI.MyBnB_PropiedadesAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
            <asp:Image ID="Image_PropiedadAdministrador" runat="server" Height="225px" Width="225px" 
                ImageUrl="~/Images/casa.jpg" />            
        </asp:Panel>
        
        <asp:ImageButton ID="ImageButtonAnteriorAdministrador" runat="server" Height="20px" 
            ImageUrl="~/Images/Preview.png" Width="30px" 
            style="margin-left: 0px; margin-top: 10px;" 
            onclick="ImageButtonAnteriorAdministrador_Click"/>
        
        <asp:ImageButton ID="ImageButtonSiguienteAdministrador" runat="server" Height="20px" 
            ImageUrl="~/Images/Next.png" Width="30px"
            style="margin-left: 30px; margin-top: 10px;" 
            onclick="ImageButtonSiguienteAdministrador_Click"/>
        
        <br /> <br />
        <asp:Button ID="Button_Agregar_PropiedadesAdministrador" runat="server" 
            BackColor="#7AB428" ForeColor="White" Height="30px"             
            style="margin-left: 0px; margin-top: 10px;" Text="Agregar" Width="90px" 
            onclick="Button_Agregar_PropiedadesAdministrador_Click" />
        <br /> 
        </td>    
    
    <td class="rightColumn" align="center"> 
    <asp:Panel ID="Panel_DescripcionAdministrador" runat="server" Height="448px" 
            HorizontalAlign="Justify" Width="638px">
        &nbsp;
        <asp:Label ID="Label12Administrador" runat="server" Font-Bold="True" Text="Descripcion"></asp:Label>
        <br />
        <hr />
        <asp:Label ID="Label_TituloAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Titulo:" />
        &nbsp;
        <asp:Label ID="Label_PTituloAdministrador" runat="server"> titulo</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_LocalidadAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Localidad:" />

        &nbsp;<asp:Label ID="Label_PLocalidadAdministrador" runat="server">localidad</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_DescripcionAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Descripcion:" />
        &nbsp;<asp:Label ID="Label_PDescripcionAdministrador" runat="server">descripcion</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_TipoAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Tipo:" />
&nbsp;
        <asp:Label ID="Label_PTipoAdministrador" runat="server">tipo</asp:Label>
        &nbsp; &nbsp;
        <br />
        <br />
        <asp:Label ID="Label_HospedajeAdministrador" runat="server" Text="Hospedaje:"
                style="margin-left: 10px; margin-top: 30px;" Font-Bold="True"/>

        &nbsp;
        <asp:Label ID="Label_PHospedajeAdministrador" runat="server">hospedaje</asp:Label>
        <br />
        &nbsp;<hr />&nbsp;<asp:Label ID="Label_CapacidadAdministrador" runat="server" 
            Font-Bold="True" style="margin-left: 10px; margin-top: 30px;" 
            Text="Capacidad:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PCapacidadAdministrador" runat="server">capacidad</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraEntradaAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Hora Entrada:" />
        &nbsp;<asp:Label ID="Label_PHoraEntradaAdministrador" runat="server">entrada</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraSalidaAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Hora Salida:" />
        <asp:Label ID="Label_PHoraSalidaAdministrador" runat="server">salida</asp:Label>
        <br /> <br />
        <hr />
        &nbsp;<asp:Label ID="Label_PrecioNocheAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Precio Noche:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PPrecioNocheAdministrador" runat="server">noche</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_PrecioVolumenAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Precio Volumen:" />
        &nbsp;&nbsp;<asp:Label ID="Label_PPrecioVolumenAdministrador" runat="server">volumen</asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_NochesMinimaAdministrador" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Noches Minimas: " />
            &nbsp;&nbsp;<asp:Label ID="Label_PNochesMinimaAdministrador" runat="server">minimo</asp:Label>                  
        </asp:Panel>       

        </td>
    </tr>
    </table>
    </asp:Panel>
</asp:Content>
