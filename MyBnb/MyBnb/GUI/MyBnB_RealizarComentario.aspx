﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_RealizarComentario.aspx.cs" Inherits="MyBnb.GUI.MyBnB_RealizarComentario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="LabelComentar" runat="server" Font-Bold="True" 
    
        Font-Size="XX-Large" Text="Comentarios" ForeColor="#7AB428" 
        CssClass="title" Width="977px"></asp:Label>
 
  
   
    <br />
    <br />
 
  
   
                        <asp:GridView ID="GridViewComentarios" runat="server" style="margin-left: 5px; margin-right: 5px; margin-top: 2px;"
                            AutoGenerateColumns="False" Width="971px">
                            <Columns>
                                <asp:BoundField DataField="login" HeaderText="Usuario" SortExpression="login" >
                                <FooterStyle Width="80px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="descripcionComentario" HeaderText="Comentario" 
                                    SortExpression="descripcionComentario" >
                                <FooterStyle Width="500px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ranking" HeaderText="Calificación" 
                                    SortExpression="ranking" >
                                <FooterStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="fechaComentario" HeaderText="Fecha " 
                                    SortExpression="fechaComentario" >
                                <FooterStyle Width="50px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>                        
    <br />
     <asp:Button ID="Button_Salir" runat="server" 
            BackColor="#671160" ForeColor="White" Height="30px"             
            style="margin-left: 10px; margin-top: 10px" Text="Salir" 
            Width="90px" onclick="Button_Comentar_Click" />
        
    <br />
    <br />

</asp:Content>
