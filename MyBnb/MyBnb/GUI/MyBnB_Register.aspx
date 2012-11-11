<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Register.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel_Login" runat="server" Height="675px" 
        HorizontalAlign="Right" Width="924px" BackColor="#EEEEEE" 
        style="margin-left: 0px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image_LogoMyBnB" runat="server"  ImageAlign="Left" 
            Height="114px" Width="459px" ImageUrl="~/Images/MyBnB.PNG" 
            style="margin-left: 25px; margin-top: 114px"/>
        <asp:Panel ID="Panel_CrearUsuario" runat="server" BorderStyle="Solid" 
            Height="604px" HorizontalAlign="Left" 
            style="margin-left: 509px; margin-top: 0px; margin-right: 26px;">
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#EEEEEE" 
                BorderStyle="Double" Height="25px" HorizontalAlign="Left">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_Registrarse" runat="server" style="font-weight: 700" 
                    Text="Registrarse" Height="20px"></asp:Label>
            </asp:Panel>
            &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_Nombre" runat="server" Text="Nombre:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox_Nombre" runat="server" Width="200px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox_Apellido" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_Pais" runat="server" Text="Pais:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox_Pais" runat="server" Width="200px"></asp:TextBox>
            &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_Email" runat="server" Text="Email:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox_Email" runat="server" Width="200px"></asp:TextBox>
            &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_Telefono" runat="server" Text="Telefono:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox_Telefono" runat="server" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_FechaNacimiento" runat="server" 
                Text="Fecha de Nacimiento:"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_Sexo" runat="server" 
                Text="Genero:"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_Sexo" runat="server" Width="200px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Panel ID="Panel2" runat="server" Height="99px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_Descripcion0" runat="server" Text="Descripcion:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBoxDescripcion" runat="server" Height="80px" 
                    TextMode="MultiLine" Width="200px"></asp:TextBox>
            </asp:Panel>
&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Registrarse" runat="server" BackColor="#7AB428" 
                Height="30px" onclick="Button_Registrarse_Click" 
                style="margin-left: 0px; margin-top: 2px" Text="Registrarse" Width="90px" />
            <br />
            &nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </asp:Panel>
    </asp:Panel>
</asp:Content>
