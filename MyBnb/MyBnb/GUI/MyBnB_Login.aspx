﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Login.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel_Login" runat="server" Height="430px" 
        HorizontalAlign="Left" Width="924px" BackColor="#EEEEEE" 
        style="margin-left: 0px">
        
        <br />        
        <asp:Label ID="Label_NombreUsuario" runat="server" Text="Usuario:"
                style="margin-left: 600px; margin-top: 15px" />
        <asp:TextBox ID="TextBox_NombreUsuario" runat="server" Width="200px" Wrap="False" 
                style="margin-left: 5px; margin-top: 15px" />
        
        <br /> 
        <asp:Label ID="Label_Contraseña" runat="server" Text="Contraseña:"
                style="margin-left: 580px; margin-top: 15px" />
        <asp:TextBox ID="TextBox_Contraseña" runat="server" Width="200px" TextMode="Password"
            style="margin-left: 5px; margin-top: 2px" />
        
        <br /> 
        <asp:Button ID="Button_Login" runat="server" BackColor="#7AB428" 
            BorderColor="#CCCCCC" Height="30px" Text="Login" 
            Width="85px" onclick="Button_Login_Click"
            style="margin-left: 775px; margin-top: 2px" />

        <asp:Image ID="Image_LogoMyBnB" runat="server"  ImageAlign="Left" 
            Height="114px" Width="459px" ImageUrl="~/Images/MyBnB.PNG" 
            style="margin-left: 25px; margin-top: 114px"/>

        <asp:Panel ID="Panel_CrearUsuario" runat="server" BorderStyle="Solid" 
            Height="273px" HorizontalAlign="Left" 
            style="margin-left: 508px; margin-top: 47px">
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#EEEEEE" 
                BorderStyle="Double" Height="25px" HorizontalAlign="Left">
                <asp:Label ID="Label_Registrarse" runat="server" style="font-weight: 700" 
                    Text="Registrarse" Height="20px"></asp:Label>
        </asp:Panel>

        <br />        
        <asp:Label ID="Label_RegistrarNombreUsuario" runat="server" Text="Nombre de Usuario:"
                style="margin-left: 10px; margin-top: 5px" />
        <asp:TextBox ID="TextBox_RegistrarNombreUsuario" runat="server" 
                style="margin-left: 10px; margin-top: 5px" Width="200px"/>                
        <br />
        <br />            
        <asp:Label ID="Label_RegistrarContraseña" runat="server" Text="Contraseña:"
                style="margin-left: 60px; margin-top: 5px" />
        <asp:TextBox ID="TextBox_RegistrarContraseña" runat="server" TextMode="Password"
                style="margin-left: 10px; margin-top: 5px" Width="200px"/>
        <br />
        <br />
        <asp:Label ID="Label_VerificarContraseña" runat="server" Text="Verificar contraseña:"
                style="margin-left: 10px; margin-top: 5px" />
        <asp:TextBox ID="TextBox_verificarContraseña" runat="server" TextMode="Password" 
                style="margin-left: 10px; margin-top: 5px" Width="200px"/>
        <br />
        <br />
        <asp:Button ID="Button_Registrarse" runat="server" BackColor="#7AB428" Text="Registrarse" 
                Height="30px" Width="90px" onclick="Button_Registrarse_Click" 
                style="margin-left: 260px; margin-top: 5px" />
        <br />
        <br />
        <asp:Label ID="LabelError" runat="server"></asp:Label>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
