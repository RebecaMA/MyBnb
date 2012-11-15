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
        
        <asp:ImageButton ID="ImageButton3" runat="server" Height="20px" 
            ImageUrl="~/Images/Preview.png" Width="30px" 
            style="margin-left: 0px; margin-top: 10px;"/>
        
        <asp:ImageButton ID="ImageButton4" runat="server" Height="20px" 
            ImageUrl="~/Images/Next.png" Width="30px"
            style="margin-left: 30px; margin-top: 10px;"/>
        
        <br /> <br />
        <asp:Button ID="Button_LogOut_Master" runat="server" 
            BackColor="#671160" ForeColor="White" Height="30px"             
            style="margin-left: 0px; margin-top: 10px;" Text="Comentar" Width="90px" />

        <asp:Button ID="Button_Desactivar_ModificarUsuario" runat="server" 
            BackColor="#7AB428" ForeColor="White" Height="30px"             
            style="margin-left: 10px; margin-top: 10px;" Text="Recomendar" Width="90px" />

        <br />
        <asp:Button ID="Button_LogOut_Master0" runat="server" 
            BackColor="#7AB428" ForeColor="White" Height="30px"             
            style="margin-left: 0px; margin-top: 10px;" Text="Reservar" Width="90px" />

        <asp:Button ID="Button_Desactivar_ModificarUsuario1" runat="server" 
            BackColor="#671160" ForeColor="White" Height="30px"             
            style="margin-left: 10px; margin-top: 10px" Text="WishList" 
            Width="90px" />
        
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
        <asp:Label ID="Label1" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_Localidad" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Localidad:" />
        <asp:Label ID="Label7" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_Descripcion" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Descripcion:" />
        <asp:Label ID="Label4" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? "></asp:Label>
        <br />

        <br />
        <asp:Label ID="Label_Tipo" runat="server" Text="Tipo:"
                style="margin-left: 10px; margin-top: 30px;" Font-Bold="True"/>

        &nbsp;
        <asp:Label ID="Label2" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        &nbsp; &nbsp;
        <br />
        <br />
        <asp:Label ID="Label_Hospedaje" runat="server" Text="Hospedaje:"
                style="margin-left: 10px; margin-top: 30px;" Font-Bold="True"/>

        &nbsp;
        <asp:Label ID="Label8" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Ocupacion"></asp:Label>
        <hr />
        <asp:Label ID="Label_Capacidad" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Capacidad:" />
&nbsp;
        <asp:Label ID="Label3" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraEntrada" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Entrada:" />
        <asp:Label ID="Label5" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_HoraSalida" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Salida:" />
        <asp:Label ID="Label6" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Precio"></asp:Label>
        <hr />
        <asp:Label ID="Label_PrecioNoche" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Noche:" />
        &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? - Esto lo dejo como Label o pongo unTextBox?"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_PrecioVolumen" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Precio Volumen:" />
        &nbsp;
        <asp:Label ID="Label10" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? "></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label_CantidadVolumen" runat="server" Font-Bold="True" 
            style="margin-left: 10px; margin-top: 30px;" Text="Cantidad Volumen:" />
        &nbsp;
        <asp:Label ID="Label11" runat="server" 
            Text="Esto lo dejo como Label o pongo unTextBox? "></asp:Label>
        <br />

        <br />                    
        </asp:Panel>       

        </td>
    </tr>
    </table>
    </asp:Panel>
</asp:Content>
