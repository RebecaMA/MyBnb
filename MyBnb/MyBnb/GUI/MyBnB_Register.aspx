<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Register.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel_Login" runat="server" 
        HorizontalAlign="Right" BackColor="#EEEEEE" 
        style="margin-left: 0px">
        
        <br />        
        <asp:Image ID="Image_LogoMyBnB" runat="server"  ImageAlign="Left" 
            Height="114px" Width="459px" ImageUrl="~/Images/MyBnB.PNG" 
            style="margin-left: 25px; margin-top: 114px"/>

        <asp:Panel ID="Panel_CrearUsuario" runat="server" BorderStyle="Solid" HorizontalAlign="Left" 
            style="margin-left: 509px; margin-top: 0px; margin-right: 26px;">
            
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#EEEEEE" 
                BorderStyle="Double" Height="25px" HorizontalAlign="Left">                  
            <asp:Label ID="Label_Registrarse" runat="server" style="font-weight: 700" 
                    Text="Registrarse" Height="20px"/>
            </asp:Panel>

            <br /> 
            <asp:Label ID="Label_Nombre" runat="server" Text="Nombre:"
                    style="margin-left: 5px; margin-top: 5px"/>                        
            <asp:TextBox ID="TextBox_Nombre" runat="server" Width="200px"
                      style="margin-left: 80px; margin-top: 5px" />

            <br />            
            <asp:Label ID="Label_Apellidos" runat="server" Text="Apellidos:"
                    style="margin-left: 5px; margin-top: 10px" />            
            <asp:TextBox ID="TextBox_Apellido" runat="server" Width="200px"
                      style="margin-left: 76px; margin-top: 10px" />
            
            <br />            
            <asp:Label ID="Label_Pais" runat="server" Text="Pais:"
                    style="margin-left: 5px; margin-top: 10px" />            
            <asp:TextBox ID="TextBox_Pais" runat="server" Width="200px"
                      style="margin-left: 107px; margin-top: 10px" />
                        
            <br />            
            <asp:Label ID="Label_Email" runat="server" Text="Email:"
                    style="margin-left: 5px; margin-top: 10px" />
            
            <asp:TextBox ID="TextBox_Email" runat="server" Width="200px"
                      style="margin-left: 100px; margin-top: 10px" />
            <br />
            <asp:Label ID="Label_Telefono" runat="server" Text="Telefono:"
                    style="margin-left: 5px; margin-top: 10px" />                        
            <asp:TextBox ID="TextBox_Telefono" runat="server" Width="200px"
                      style="margin-left: 80px; margin-top: 10px" />

            <br />
            <br />
            <asp:Label ID="Label_FechaNacimiento" runat="server" Text="Fecha de Nacimiento:     "
                style="margin-left: 5px; margin-top: 10px" />            
            <script type="text/javascript"
            src="http://www.snaphost.com/jquery/Calendar.aspx"></script>

            
            <br />
            <asp:Label ID="Label_Sexo" runat="server" Text="Genero:"
                    style="margin-left: 5px; margin-top: 10px" />
            <asp:DropDownList ID="DropDownList_Sexo" runat="server" Width="200px"
                           style="margin-left: 88px; margin-top: 10px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
            </asp:DropDownList>                                   

            <br />
            <asp:Label ID="Label_Descripcion" runat="server" Text="Descripcion:"
                    style="margin-left: 5px; margin-top: 10px" />
            <asp:TextBox ID="TextBoxDescripcion" runat="server" Width="200px"
                      style="margin-left: 60px; margin-top: 10px" />
            
            <br />
            <asp:Button ID="Button_Registrarse" runat="server" BackColor="#7AB428" 
                Height="30px" onclick="Button_Registrarse_Click" Text="Registrarse" Width="90px"
                style="margin-left: 250px; margin-top: 10px" />
            <br /><br />
        </asp:Panel>
    </asp:Panel>
    <br /><br />
</asp:Content>
