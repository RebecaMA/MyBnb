<%@ Page Title="MyBnB - Registrarse" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Register.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        #Text1
        {
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Panel ID="Panel_Login" runat="server" 
        HorizontalAlign="Right" BackColor="#EEEEEE" 
        
    style="margin-left: 0px; margin-bottom:0; margin-right:0; margin-right:0;" 
    Height="558px" Width="960px">
        
        <br />        
        <asp:Image ID="Image_LogoMyBnB" runat="server"  ImageAlign="Left" 
            Height="101px" Width="403px" ImageUrl="~/Images/MyBnB.PNG" 
            style="margin-left: 25px; margin-top: 144px"/>

        <asp:Panel ID="Panel_CrearUsuario" runat="server" BorderStyle="Solid" HorizontalAlign="Left" 
            style="margin-left: 509px; margin-top: 50px; margin-right: 40px;">
            
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
                
            &nbsp;<script type="text/javascript">


                function openCalendar() {
                    if (divCalendar.style.display == "none")
                        divCalendar.style.display = "inline";
                    else
                        divCalendar.style.display = "none";
                }
            </script><div ID="divCalendar" style="display: none; position: absolute">
                <asp:Calendar ID="CalendarModificarUsuario" runat="server" BackColor="White" 
                    BorderColor="#999999" BorderStyle="Outset" BorderWidth="2px" CellPadding="4" 
                    DayNameFormat="FirstLetter" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="Black" Height="180px" 
                    onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                </asp:Calendar>
            </div>
            <input name="CalendarModificarUsuario" id="Text1" type="text" />
            <asp:Button ID="Button1" runat="server" OnClientClick="return openCalendar()" 
                Text="..." />
            <br />

            <asp:Label ID="Label_Sexo" runat="server" 
                style="margin-left: 5px; margin-top: 10px" Text="Genero:" />
            <asp:DropDownList ID="DropDownList_Genero" runat="server" 
                style="margin-left: 88px; margin-top: 10px" Width="200px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
            </asp:DropDownList>
&nbsp;<br />

            <br />
            <asp:Label ID="Label_Descripcion" runat="server" Text="Descripcion:"
                    style="margin-left: 5px; margin-top: 10px" />
            &nbsp;<asp:TextBox ID="TextBox_Descripcion" runat="server" Width="200px"
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
