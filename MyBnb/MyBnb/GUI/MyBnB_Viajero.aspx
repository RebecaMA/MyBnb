<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Viajero.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Viajero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<div>    
    <asp:Menu ID="MenuTabControl" runat="server" 
        OnMenuItemClick="MenuTabControl_MenuItemClick" Orientation="Horizontal"
              style="left: 0; position: relative; top: 0" Height="0px" 
        Width="900px" >
              <StaticMenuStyle HorizontalPadding="0px" VerticalPadding="0px" />
              <StaticSelectedStyle BorderColor="#C0C0FF" />
              <DynamicItemTemplate>
                  <%# Eval("Text") %>
              </DynamicItemTemplate>
              <Items>
                    <asp:MenuItem Text="Modificar Usuario" Value="0" Selected="True"></asp:MenuItem>
                    <asp:MenuItem Text="Listar Propiedad" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Crear Viaje" Value="2"></asp:MenuItem>
                    <asp:MenuItem Text="Propiedades" Value="3"></asp:MenuItem>
                    <asp:MenuItem Text="Solicitar Anfitrion" Value="4"></asp:MenuItem>
                    <asp:MenuItem Text="Administrar Wishlist" Value="5"></asp:MenuItem>
              </Items>
              <StaticHoverStyle BackColor="Silver" />
              <StaticMenuItemStyle BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
    </asp:Menu>
</div>

<div style="width: 918px; height: 600px; background-color: #C0C0FF;">
            <asp:MultiView ID="MultiViewTabControl" runat="server">
                 <asp:View ID="ViewModificarUsuario" runat="server">
                      <asp:Panel ID="Panel_ModificarUsuario" runat="server" HorizontalAlign="Right" 
                          style="margin-left: 0px; margin-top: 0px; margin-right: 0px;" 
                          BackColor="White" BorderStyle="Groove">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="Label_Login" runat="server" Text="Login:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Login_ModificarUsuario" runat="server" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Contrasena" runat="server" Text="Password:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Contrasena_ModificarUsuario" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                          <asp:Label ID="Label_Nombre" runat="server" Text="Nombre:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Nombre_ModificarUsuario" runat="server" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Apellidos_ModificarUsuario" runat="server" 
                              Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Pais" runat="server" Text="Pais:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Pais_ModificarUsuario" runat="server" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Email" runat="server" Text="Email:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Email_ModificarUsuario" runat="server" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Telefono" runat="server" Text="Telefono:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Telefono_ModificarUsuario" runat="server" 
                              Width="200px"></asp:TextBox>
                          &nbsp;*&nbsp; &nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_FechaNacimiento" runat="server" 
                              Text="Fecha de Nacimiento:"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label_Sexo" runat="server" 
                              Text="Genero:"></asp:Label>
                          &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_Sexo_ModificarUsuario" 
                              runat="server" Width="200px">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>Femenino</asp:ListItem>
                              <asp:ListItem>Masculino</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;<asp:Label ID="Label_Descripcion0" runat="server" Text="Descripcion:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Descripcion_ModificarUsuario" runat="server" Height="80px" 
                              TextMode="MultiLine" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Button_Desactivar_ModificarUsuario" 
                              runat="server" BackColor="#7AB428" ForeColor="White" Height="30px" 
                               style="margin-left: 0px; margin-top: 2px" 
                              Text="Desactivar" Width="90px" 
                              onclick="Button_Desactivar_ModificarUsuario_Click" />
                          &nbsp; &nbsp;
                          <asp:Button ID="Button_Modificar_ModificarUsuario" runat="server" BackColor="#7AB428" 
                              ForeColor="White" Height="30px" onclick="Button_Modificar_Click" 
                              style="margin-left: 0px; margin-top: 2px" Text="Modificar" Width="90px" />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;<br />
                          <asp:Button ID="Button_LogOut_ModificarUsuario" runat="server" BackColor="#671160" 
                              ForeColor="White" Height="30px" onclick="Button_LogOut_Click" 
                              style="margin-left: 0px; margin-top: 2px" Text="Log Out" Width="90px" />
                          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;<br />
                          * Campos opcionales.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                      </asp:Panel>
                      <br /> </asp:View>
                 <asp:View ID="ViewListarPropiedad" runat="server">
                      <asp:Panel ID="Panel_ListarPropiedad" runat="server" BackColor="White" 
                          BorderStyle="Groove" HorizontalAlign="Right" 
                          style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Titulo" runat="server" Text="Titulo:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Titulo_ListarPropiedad" runat="server" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Tipo" runat="server" Text="Tipo:"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList_Tipo_ListarPropiedad" runat="server" 
                              AutoPostBack="True" style="margin-top: 5px; margin-left: 0px;" Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Capacidad" runat="server" Text="Capacidad:"></asp:Label>
                          &nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox_Capacidad_ListarPropiedad0" runat="server" 
                              Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;<br />
                          <br />
                          <asp:Label ID="Label_Descripcion2" runat="server" Text="Descripcion:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Descripcion_ListarPropiedad" runat="server" 
                              Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;**&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_Fotografia_ListarPropiedad" runat="server" 
                              Text="Fotografia:"></asp:Label>
                          &nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                          &nbsp;<br />
                          <br />
                          &nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_HoraEntrada" runat="server" Text="Hora Entrada:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_HoraEntrada_ListarPropiedad" runat="server" 
                              Width="75px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_TiempoEntrada_ListarPropiedad" 
                              runat="server" Width="75px" AutoPostBack="True">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <asp:Label ID="Label_HoraSalida" runat="server" Text="Hora Salida:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_HoraSalida_ListarPropiedad0" runat="server" 
                              Width="75px" AutoPostBack="True">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_TiempoSalida_ListarPropiedad3" 
                              runat="server" Width="75px" AutoPostBack="True">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_Pais_ListarPropiedad" runat="server" Text="Localidad:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_Localidad_ListarPropiedad" runat="server" 
                              Width="200px" AutoPostBack="True">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_TipoHospedaje_ListarPropiedad" runat="server" 
                              Text="Tipo de Hospedaje:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_Hospedaje_ListarPropiedad0" runat="server" 
                              Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_PrecioNoche" runat="server" Text="Precio por noche:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_PrecioNoche_ListarPropiedad" runat="server" 
                              Width="100px"></asp:TextBox>
                          &nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_PrecioVolumen_ListarPropiedad" runat="server" 
                              Text="Precio por volumen:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_PrecioVolumen" runat="server" Width="100px"></asp:TextBox>
                          &nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_CantidadMinima" runat="server" 
                              Text="Cantidad de noches minima:"></asp:Label>
                          &nbsp; &nbsp;<asp:TextBox ID="TextBox_CantidadNoches" runat="server" 
                              Width="100px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <asp:Button ID="Button_ListarPropiedad_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                               style="margin-left: 0px; margin-top: 2px" 
                              Text="Registrar" Width="90px" 
                              onclick="Button_ListarPropiedad_ListarPropiedad_Click" />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;<br />
                          <asp:Button ID="Button_LogOut_ListarPropiedad" runat="server" 
                              BackColor="#671160" ForeColor="White" Height="30px" 
                              onclick="Button_LogOut_Click" style="margin-left: 0px; margin-top: 2px" 
                              Text="Log Out" Width="90px" />
                          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;<br /> * Precio en dolares estadounidenses.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          <br /> **Dato opcional.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                      </asp:Panel>
                 </asp:View>
                <asp:View ID="ViewCrearViaje" runat="server">
                      <asp:Panel ID="Panel_ListarPropiedad0" runat="server" BackColor="White" 
                          BorderStyle="Groove" HorizontalAlign="Left" ScrollBars="Vertical" 
                          style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Titulo0" runat="server" Text="Titulo:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Titulo_Reservar" runat="server" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_FechaInicio_Reservar" runat="server" 
                              Text="Fecha Inicio:"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_FechaInicioDia_Reservar" runat="server">
                              <asp:ListItem>- Dia -</asp:ListItem>
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                              <asp:ListItem>21</asp:ListItem>
                              <asp:ListItem>22</asp:ListItem>
                              <asp:ListItem>23</asp:ListItem>
                              <asp:ListItem>24</asp:ListItem>
                              <asp:ListItem>25</asp:ListItem>
                              <asp:ListItem>26</asp:ListItem>
                              <asp:ListItem>27</asp:ListItem>
                              <asp:ListItem>28</asp:ListItem>
                              <asp:ListItem>29</asp:ListItem>
                              <asp:ListItem>30</asp:ListItem>
                              <asp:ListItem>31</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_FechaInicioMes_Reservar" runat="server">
                              <asp:ListItem Value="- Mes -"></asp:ListItem>
                              <asp:ListItem>Enero</asp:ListItem>
                              <asp:ListItem>Febrero</asp:ListItem>
                              <asp:ListItem>Marzo</asp:ListItem>
                              <asp:ListItem>Abril</asp:ListItem>
                              <asp:ListItem>Mayo</asp:ListItem>
                              <asp:ListItem>Junio</asp:ListItem>
                              <asp:ListItem>Julio</asp:ListItem>
                              <asp:ListItem>Agosto</asp:ListItem>
                              <asp:ListItem>Septiembre</asp:ListItem>
                              <asp:ListItem>Octubre</asp:ListItem>
                              <asp:ListItem>Noviembre</asp:ListItem>
                              <asp:ListItem>Diciembre</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_FechaInicioAho_Reservar" runat="server">
                              <asp:ListItem>- Aho -</asp:ListItem>
                              <asp:ListItem>2012</asp:ListItem>
                              <asp:ListItem>2013</asp:ListItem>
                              <asp:ListItem>2014</asp:ListItem>
                              <asp:ListItem>2015</asp:ListItem>
                              <asp:ListItem>2016</asp:ListItem>
                              <asp:ListItem>2017</asp:ListItem>
                              <asp:ListItem>2018</asp:ListItem>
                              <asp:ListItem>2019</asp:ListItem>
                              <asp:ListItem>2020</asp:ListItem>
                              <asp:ListItem>2021</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_FechaFin" runat="server" Text="Fecha Fin:"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_FechaFinDia_Reservar" runat="server">
                              <asp:ListItem>- Dia -</asp:ListItem>
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                              <asp:ListItem>21</asp:ListItem>
                              <asp:ListItem>22</asp:ListItem>
                              <asp:ListItem>23</asp:ListItem>
                              <asp:ListItem>24</asp:ListItem>
                              <asp:ListItem>25</asp:ListItem>
                              <asp:ListItem>26</asp:ListItem>
                              <asp:ListItem>27</asp:ListItem>
                              <asp:ListItem>28</asp:ListItem>
                              <asp:ListItem>29</asp:ListItem>
                              <asp:ListItem>30</asp:ListItem>
                              <asp:ListItem>31</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList 
                              ID="DropDownList_FechaFinMes_Reservar1" runat="server">
                              <asp:ListItem Value="- Mes -"></asp:ListItem>
                              <asp:ListItem>Enero</asp:ListItem>
                              <asp:ListItem>Febrero</asp:ListItem>
                              <asp:ListItem>Marzo</asp:ListItem>
                              <asp:ListItem>Abril</asp:ListItem>
                              <asp:ListItem>Mayo</asp:ListItem>
                              <asp:ListItem>Junio</asp:ListItem>
                              <asp:ListItem>Julio</asp:ListItem>
                              <asp:ListItem>Agosto</asp:ListItem>
                              <asp:ListItem>Septiembre</asp:ListItem>
                              <asp:ListItem>Octubre</asp:ListItem>
                              <asp:ListItem>Noviembre</asp:ListItem>
                              <asp:ListItem>Diciembre</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_FechaFinAho_Reservar" runat="server">
                              <asp:ListItem>- Aho -</asp:ListItem>
                              <asp:ListItem>2012</asp:ListItem>
                              <asp:ListItem>2013</asp:ListItem>
                              <asp:ListItem>2014</asp:ListItem>
                              <asp:ListItem>2015</asp:ListItem>
                              <asp:ListItem>2016</asp:ListItem>
                              <asp:ListItem>2017</asp:ListItem>
                              <asp:ListItem>2018</asp:ListItem>
                              <asp:ListItem>2019</asp:ListItem>
                              <asp:ListItem>2020</asp:ListItem>
                              <asp:ListItem>2021</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button_CrearViaje_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_CrearViaje_ListarPropiedad_Click" 
                              style="margin-left: 0px; margin-top: 2px" Text="Crear" 
                              Width="150px" />
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button_Reservar_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              style="margin-left: 0px; margin-top: 2px" Text="Crear y Reservar" 
                              Width="150px" />
                          <br />
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button_LogOut_ListarPropiedad0" runat="server" 
                              BackColor="#671160" ForeColor="White" Height="30px" 
                              onclick="Button_LogOut_Click" style="margin-left: 0px; margin-top: 2px" 
                              Text="Log Out" Width="90px" />
                          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                      </asp:Panel>
                 </asp:View>
                 <asp:View ID="ViewPropiedades" runat="server">
                 </asp:View>
                 <asp:View ID="ViewSolicitarAnfitrion" runat="server">
                 </asp:View>
                 <asp:View ID="ViewAdministrarWishlist" runat="server">
                 </asp:View>
            </asp:MultiView>
</div>

</asp:Content>
