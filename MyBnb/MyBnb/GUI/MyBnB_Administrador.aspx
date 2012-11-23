<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Administrador.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>    
    <asp:Menu ID="MenuTabControl" runat="server" 
        OnMenuItemClick="MenuTabControl_MenuItemClick" Orientation="Horizontal"
              style="margin-left:20; margin-right: 20; margin-top: 20; margin-bottom: 0px" 
              Height="30px" Width="960px" BackColor="#588EBE" 
              ForeColor="White" >
              <StaticMenuStyle HorizontalPadding="0px" VerticalPadding="0px" />
              <StaticSelectedStyle BorderColor="#C0C0FF" />
              <DynamicItemTemplate>
                  <%# Eval("Text") %>
              </DynamicItemTemplate>
              <Items>
                    <asp:MenuItem Text="Crear Categoria Hospedaje" Value="0" Selected="True"></asp:MenuItem>
                    <asp:MenuItem Text="Crear Lista Recomendacion" Value="1"></asp:MenuItem>
              </Items>
              <StaticHoverStyle BackColor="Silver" />
              <StaticMenuItemStyle BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
    </asp:Menu>
</div>

<div style="width: 957px; height: 10px; background-color: #C0C0FF;">
            <asp:MultiView ID="MultiViewTabControl" runat="server">

                <asp:View ID="ViewCategoriaHospedaje" runat="server">
                      <asp:Panel ID="Panel_CrearViaje" runat="server" BackColor="#E4E4E4" 
                          BorderStyle="Groove" HorizontalAlign="Left" 
                          style="margin-left: 0px; margin-top: 0px; margin-right: 0px;" 
                          Height="760px">
                          
                          <br />
                          
                          <br />
                          <asp:Label ID="Label_NombreCategoria" runat="server" Text="Nombre:"
                                  style="margin-left: 40px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_NombreCategoria" runat="server" Width="200px"
                                    style="margin-left: 43px; margin-top: 10px;"/>
                                                    
                          <form action="MyBnB_Viajero.aspx.cs" method="post">
                               &nbsp;</form>
                          <br /> <br /> 
                          <asp:Label ID="Label_DescripcionCategoria" runat="server" 
                              style="margin-left: 40px; margin-top: 10px;" Text="Descripcion:" />
                          <asp:TextBox ID="TextBox_DescripcionCategoria" runat="server" 
                              style="margin-left: 23px; margin-top: 10px;" Width="200px" 
                              Height="100px" />
                          <br />
                          <asp:Button ID="Button_CrearCategoria" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_CrearCategoria_Click" 
                              Text="Crear" Width="150px"
                              style="margin-left: 140px; margin-top: 10px;"/>
                          
                          <br /> <br />
                      </asp:Panel>
                 </asp:View>                 

                 <asp:View ID="ViewListaRecomendacion" runat="server">
                     <asp:Panel ID="Panel_SolicitarAnfitrion" runat="server" BackColor="#E4E4E4" 
                         BorderStyle="Groove" HorizontalAlign="Left" Height="760px"
                         style="margin-left: 0px; margin-top: 0px; margin-right: 0px;" 
                         Width="960px">
                         
                         <br /> <br />                         
                         <asp:Label ID="Label1" runat="server" Text="Nombre:"
                                 style="margin-left: 40px; margin-top: 10px;" />
                         <asp:TextBox ID="TextBox_NombreCategoria0" runat="server" 
                             style="margin-left: 23px; margin-top: 10px;" Width="200px" />
                         
                         <br />
                         &nbsp;
                         <asp:Label ID="Label2" runat="server" Text="Localidad:"
                                 style="margin-left: 30px; margin-top: 10px;" />
                         <asp:DropDownList ID="DropDownList_Localidad_Propiedades0" runat="server" 
                             AutoPostBack="True" style="margin-left: 20px; margin-top: 10px;" Width="200px">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         <br />
                         &nbsp;<asp:Button ID="Button_Filtrar_Propiedades" runat="server" BackColor="#671160" 
                             ForeColor="White" Height="30px" onclick="Button_Filtrar_Propiedades_Click1" 
                             style="margin-left: 110px; margin-top: 10px;" Text="Filtrar" 
                             Width="150px" />
                         <br />
                         <br />
                         
                         <asp:Panel ID="Panel1" runat="server" Height="426px" style="margin-bottom: 0px">
                             <asp:GridView ID="GridView_Propiedades0" runat="server" 
                                 AutoGenerateColumns="False" 
                                 onselectedindexchanged="GriedViewPropiedades" ShowFooter="True" 
                                 style="margin-left: 30px; margin-right: 30px; margin-top: 10px;" 
                                 Width="880px">
                                 <Columns>
                                     <asp:BoundField DataField="titulo" HeaderText="Titulo" 
                                         SortExpression="titulo" ReadOnly="True" />
                                     <asp:BoundField DataField="cantidadMaximaPersonas" 
                                         HeaderText="Personas Maximas" SortExpression="cantidadMaximaPersonas" 
                                         ReadOnly="True" >
                                     <FooterStyle Height="100px" />
                                     </asp:BoundField>
                                     <asp:BoundField DataField="precioNoche" HeaderText="Precio por Noche" 
                                         SortExpression="precioNoche" ReadOnly="True" />
                                     <asp:BoundField DataField="ranking" HeaderText="Ranking" 
                                         SortExpression="ranking" ReadOnly="True" />
                                     <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                                         SortExpression="descripcion" ReadOnly="True" />
                                     <asp:BoundField DataField="cantidadMinimaNoches" HeaderText="Noches Minimas:" 
                                         SortExpression="cantidadMinimaNoches" ReadOnly="True" >
                                     <FooterStyle Height="100px" />
                                     </asp:BoundField>
                                     <asp:TemplateField HeaderText="Seleccionar">
                                         <EditItemTemplate>
                                             <asp:CheckBox ID="CheckBox1" runat="server" />
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:CheckBox ID="CheckBox1" runat="server" />
                                         </ItemTemplate>
                                         <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                                     </asp:TemplateField>
                                 </Columns>
                             </asp:GridView>
                         </asp:Panel>
                         
                         <br /> <br />
                         
                         <asp:Button ID="Button_Ver_Propiedades0" runat="server" 
                             BackColor="#7AB428" ForeColor="White" Height="30px" 
                             style="margin-left: 30px; margin-top: 10px;" Text="Ver" 
                             Width="150px" onclick="Button_Ver_Propiedades_Click" />
                         <asp:Button ID="Button_CrearListaRecomendacion" runat="server" 
                             BackColor="#671160" ForeColor="White" Height="30px" 
                             onclick="Button_CrearListaRecomendacion_Click" 
                             style="margin-left: 20px; margin-top: 10px;" Text="Crear" Width="150px" />
                         <br />
                         <br />
                     </asp:Panel>
                 </asp:View>
                 
            </asp:MultiView>
</div>
</asp:Content>
