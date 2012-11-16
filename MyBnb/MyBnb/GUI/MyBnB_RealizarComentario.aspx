<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_RealizarComentario.aspx.cs" Inherits="MyBnb.GUI.MyBnB_RealizarComentario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="LabelComentar" runat="server" Font-Bold="True" 
    
        Font-Size="XX-Large" Text="Comentar" ForeColor="#7AB428"></asp:Label>
 
  
   
    <br />
    <br />
 
  
   
    <asp:Table ID="TableContenido" runat="server" Height="22px" Width="83px">
     <asp:TableRow>
     <asp:TableCell>
            <asp:Label ID="LabelRanking" runat="server" Font-Bold="True" Font-Size="Large" Text="Ranking"></asp:Label>    
            <asp:RadioButtonList ID="RadioButtonListRanking" runat="server" 
              BorderStyle="Dotted" BorderWidth="0px" Font-Bold="True" Font-Italic="False" 
              Font-Size="Small"        
              RepeatDirection="Horizontal" Width="300px">
              <asp:ListItem Selected="True">5</asp:ListItem>
              <asp:ListItem>4</asp:ListItem>
              <asp:ListItem>3</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>1</asp:ListItem>
           </asp:RadioButtonList>
    <asp:Label ID="Label_Comentar" runat="server"  Text="5 es el mayor, 1 es el menor"></asp:Label>

    </asp:TableCell>

    <asp:TableCell>
    
         <asp:Label ID="LabelComentario" runat="server" Font-Bold="True"  Font-Size="Large" Text="Comentario"></asp:Label>
 
         <asp:TextBox ID="TextBoxComentario" runat="server" Height="200px" TextMode="MultiLine"  Width="500px"></asp:TextBox>
    
    </asp:TableCell>
     </asp:TableRow>   
    </asp:Table>
    <br />
     <asp:Button ID="Button_Comentar" runat="server" 
            BackColor="#671160" ForeColor="White" Height="30px"             
            style="margin-left: 10px; margin-top: 10px" Text="Comentar" 
            Width="90px" onclick="Button_Comentar_Click" />
        
    <br />
    <br />

</asp:Content>
