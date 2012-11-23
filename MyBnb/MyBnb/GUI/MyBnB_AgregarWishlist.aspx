<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_AgregarWishlist.aspx.cs" Inherits="MyBnb.GUI.MyBnB_AgregarWishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label_Prioridad" runat="server" 
        style="margin-left: 10px; margin-top: 10px;" Text="Priodidad:" />
  <asp:DropDownList ID="DropDownList_Prioridad_AgregarWishlist" runat="server" 
                        style="margin-left: 86px; margin-top: 10px;" Width="200px" 
        AutoPostBack="True" >
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <br />
    <br />
                              <asp:Button ID="Button_AgregarWishList_AgregarWishlist" runat="server" 
                                  BackColor="#7AB428" ForeColor="White" Height="30px" 
                                  onclick="Button_Desactivar_ModificarUsuario_Click" 
                                  style="margin-left: 145px; margin-top: 10px;" Text="Agregar" 
                                  Width="90px" />
                              
                              <br />
    <br />
    <br />
</asp:Content>
