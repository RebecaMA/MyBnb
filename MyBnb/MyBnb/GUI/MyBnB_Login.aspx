<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Login.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel_Login" runat="server" Height="430px" 
        HorizontalAlign="Right" Width="924px" BackColor="White" 
        style="margin-left: 0px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label_NombreUsuario" runat="server" Text="Usuario:"></asp:Label>
&nbsp;&nbsp;<asp:TextBox ID="TextBox_NombreUsuario" runat="server" Width="200px" 
            Wrap="False" style="margin-top: 0px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label_Contraseña" runat="server" Text="Contraseña:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox_Contraseña" runat="server" Width="200px" 
            TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button_Login" runat="server" BackColor="#7AB428" 
            BorderColor="#CCCCCC" Height="30px" 
            style="text-align: center; margin-top: 8px;" Text="Login" 
            Width="85px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image_LogoMyBnB" runat="server"  ImageAlign="Left" 
            Height="114px" Width="459px" ImageUrl="~/Images/MyBnB.PNG" 
            style="margin-left: 25px; margin-top: 114px"/>
        <asp:Panel ID="Panel_CrearUsuario" runat="server" BorderStyle="Solid" 
            Height="273px" HorizontalAlign="Center" 
            style="margin-left: 508px; margin-top: 47px">
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#EEEEEE" 
                BorderStyle="Double" Height="25px" HorizontalAlign="Left">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_Registrarse" runat="server" style="font-weight: 700" 
                    Text="Registrarse" Height="20px"></asp:Label>
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="Label_RegistrarNombreUsuario" runat="server" 
                Text="Nombre de Usuario:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_RegistrarNombreUsuario" runat="server" 
                style="margin-left: 0px" Width="200px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label_RegistrarContraseña" runat="server" Text="Contraseña:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_RegistrarContraseña" runat="server" Width="200px" 
                TextMode="Password"></asp:TextBox>

                <br />

                <asp:Label ID="Label_VerificarContraseña" runat="server" 
                Text="Verificar contraseña:"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_verificarContraseña" runat="server" 
                TextMode="Password" Width="200px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Registrarse" runat="server" BackColor="#7AB428" 
                Text="Registrarse" Height="30px" style="margin-left: 0px; margin-top: 2px" 
                Width="90px" onclick="Button_Registrarse_Click" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
