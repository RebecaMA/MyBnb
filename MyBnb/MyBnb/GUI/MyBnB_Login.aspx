<%@ Page Title="MyBnB - Login" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Login.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel_Login" runat="server" Height="811px" 
        HorizontalAlign="Left" Width="960px" BackColor="#EEEEEE" 
        style="margin-left: 0px; margin-top: 0px;">
        
        <br />        
        <asp:Label ID="Label_NombreUsuario" runat="server" Text="Usuario:"
                style="margin-left: 600px; margin-top: 15px" />
        <asp:TextBox ID="TextBox_Usuario" runat="server" Width="200px" Wrap="False" 
                style="margin-left: 5px; margin-top: 15px" />
        
        <br /> <br />
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
            Height="285px" HorizontalAlign="Left" 
            style="margin-left: 508px; margin-top: 30px; margin-right: 40px">
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#EEEEEE" 
                BorderStyle="Double" Height="25px" HorizontalAlign="Left">
                <asp:Label ID="Label_Registrarse" runat="server" style="font-weight: 700" 
                    Text="Registrarse" Height="20px"></asp:Label>
        </asp:Panel>

        <br />        
        <asp:Label ID="Label_RegistrarNombreUsuario" runat="server" Text="Nombre de Usuario:"
                style="margin-left: 10px; margin-top: 5px" />
        <asp:TextBox ID="TextBox_Usuario_Registrarse" runat="server" 
                style="margin-left: 10px; margin-top: 5px" Width="200px"/>                
        <br />
        <br />            
        <asp:Label ID="Label_RegistrarContraseña" runat="server" Text="Contraseña:"
                style="margin-left: 60px; margin-top: 5px" />
        <asp:TextBox ID="TextBox_Contraseña_Registrarse" runat="server" TextMode="Password"
                style="margin-left: 10px; margin-top: 5px" Width="200px"/>
        <br />
        <br />
        <asp:Label ID="Label_VerificarContraseña" runat="server" Text="Verificar contraseña:"
                style="margin-left: 10px; margin-top: 5px" />
        <asp:TextBox ID="TextBox_VerificarContraseña_Registrarse" runat="server" TextMode="Password" 
                style="margin-left: 10px; margin-top: 5px" Width="200px" 
                />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Tipo Usuario:"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="200px">
                <asp:ListItem>Viajero</asp:ListItem>
                <asp:ListItem>Administrador</asp:ListItem>
            </asp:DropDownList>
            <br />
        <br />
        
        <script type="text/javascript">
            function openCalendar() {
                if (divCalendar.style.display == "none")
                    divCalendar.style.display = "inline";
                else
                    divCalendar.style.display = "none";
            }
        </script>
        
        <div id="divCalendar" style="display: none; position: absolute">
        <asp:Calendar ID="Calendar" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Outset" BorderWidth="2px" CellPadding="4" 
            DayNameFormat="FirstLetter" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="Black" Height="180px"
            onselectionchanged="Calendar1_SelectionChanged" Width="200px">
        </asp:Calendar>
        </div>                        

        <asp:Button ID="Button_Registrarse" runat="server" BackColor="#7AB428" Text="Registrarse" 
                Height="30px" Width="90px" onclick="Button_Registrarse_Click" 
                style="margin-left: 260px; margin-top: 5px" />
        <br />
        <br />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
