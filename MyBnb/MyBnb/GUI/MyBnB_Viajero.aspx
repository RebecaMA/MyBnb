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
                      <asp:Panel ID="Panel_ModificarUsuario" runat="server" HorizontalAlign="Left" 
                              style="margin-left: 0px; margin-top: 0px; margin-right: 0px;" 
                              BackColor="White" BorderStyle="Groove" Height="449px">
                              
                              <br />
                              <asp:Label ID="Label_Login" runat="server" Text="Login:"
                                      style="margin-left: 10px; margin-top: 10px;"/>
                              <asp:TextBox ID="TextBox_Login_ModificarUsuario" runat="server" Width="200px"
                                        style="margin-left: 100px; margin-top: 10px;"/>
                              
                              <br />
                              <asp:Label ID="Label_Contrasena" runat="server" Text="Password:"
                                      style="margin-left: 10px; margin-top: 10px;"/>
                              <asp:TextBox ID="TextBox_Contrasena_ModificarUsuario" runat="server" Width="200px" TextMode="Password"
                                        style="margin-left: 75px; margin-top: 10px;"/>
                              
                              <br />
                              <asp:Label ID="Label_Nombre" runat="server" Text="Nombre:"
                                  style="margin-left: 10px; margin-top: 10px;"/>                          
                              <asp:TextBox ID="TextBox_Nombre_ModificarUsuario" runat="server" Width="200px"
                                        style="margin-left: 83px; margin-top: 10px;"/>
                              
                              <br />
                              <asp:Label ID="Label_Apellidos" runat="server" Text="Apellidos:"
                                      style="margin-left: 10px; margin-top: 10px;"/>
                              <asp:TextBox ID="TextBox_Apellidos_ModificarUsuario" runat="server" Width="200px"
                                        style="margin-left: 80px; margin-top: 10px;"/>
                          
                              <br />
                              <asp:Label ID="Label_Pais" runat="server" Text="Pais:"
                                      style="margin-left: 10px; margin-top: 10px;"/>                          
                              <asp:TextBox ID="TextBox_Pais_ModificarUsuario" runat="server" Width="200px"
                                        style="margin-left: 110px; margin-top: 10px;"/>
                          
                              <br />
                              <asp:Label ID="Label_Email" runat="server" Text="Email:"
                                      style="margin-left: 10px; margin-top: 10px;"/>                          
                              <asp:TextBox ID="TextBox_Email_ModificarUsuario" runat="server" Width="200px"
                                        style="margin-left: 100px; margin-top: 10px;"/>
                              
                              <br />                       
                              <asp:Label ID="Label_Telefono" runat="server" Text="Telefono:"
                                      style="margin-left: 10px; margin-top: 10px;"/>
                              <asp:TextBox ID="TextBox_Telefono_ModificarUsuario" runat="server" Width="200px"
                                        style="margin-left: 80px; margin-top: 10px;"/>
                          
                              <br /><br />
                              <asp:Label ID="Label_FechaNacimiento" runat="server" Text="Fecha de Nacimiento:"
                                      style="margin-left: 10px; margin-top: 10px;"/>&nbsp;&nbsp;
                              <script type="text/javascript"
                              src="http://www.snaphost.com/jquery/Calendar.aspx"></script>
                                                            
                              <br />                              
                              <asp:Label ID="Label_Sexo" runat="server" Text="Genero:"
                                  style="margin-left: 10px; margin-top: 10px;" />
                              <asp:DropDownList ID="DropDownList_Sexo_ModificarUsuario" runat="server" 
                                  style="margin-left: 86px; margin-top: 10px;" Width="200px">
                                  <asp:ListItem></asp:ListItem>
                                  <asp:ListItem>Femenino</asp:ListItem>
                                  <asp:ListItem>Masculino</asp:ListItem>
                              </asp:DropDownList>
                              
                              <br />
                              <asp:Label ID="Label_Descripcion0" runat="server" 
                                  style="margin-left: 10px; margin-top: 10px;" Text="Descripcion:" />
                              <asp:TextBox ID="TextBox_Descripcion_ModificarUsuario" runat="server" 
                                  style="margin-left: 61px; margin-top: 10px;" Width="200px" />
                              
                              <br />
                              <asp:Button ID="Button_Desactivar_ModificarUsuario" runat="server" 
                                  BackColor="#7AB428" ForeColor="White" Height="30px" 
                                  onclick="Button_Desactivar_ModificarUsuario_Click" 
                                  style="margin-left: 145px; margin-top: 10px;" Text="Desactivar" Width="90px" />
                              
                              <asp:Button ID="Button_Modificar_ModificarUsuario" runat="server" 
                                  BackColor="#7AB428" ForeColor="White" Height="30px" 
                                  onclick="Button_Modificar_Click" 
                                  style="margin-left: 15px; margin-top: 10px" 
                                  Text="Modificar" Width="90px" />
                              <br />
                              <br />
                              * Campos opcionales.
                              <br />
                              <br />                          
                      </asp:Panel>
                      <br /> 
                 </asp:View>

                 <asp:View ID="ViewListarPropiedad" runat="server">
                      <asp:Panel ID="Panel_ListarPropiedad" runat="server" BackColor="White" 
                                 BorderStyle="Groove" HorizontalAlign="Left" 
                                 style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                              
                          <br />                                                         
                          <asp:Label ID="Label_Titulo" runat="server" Text="Titulo:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_Titulo_ListarPropiedad" runat="server" Width="200px"
                                    style="margin-left: 100px; margin-top: 10px;"/>
                                                    
                          <br />                          
                          <asp:Label ID="Label_Tipo" runat="server" Text="Tipo:"
                                    style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:DropDownList ID="DropDownList_Tipo_ListarPropiedad" runat="server" 
                              AutoPostBack="True" Width="200px"
                              style="margin-left: 105px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          
                          <br />                                                    
                          <asp:Label ID="Label_Capacidad" runat="server" Text="Capacidad:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_Capacidad_ListarPropiedad" runat="server" Width="200px"
                                    style="margin-left: 68px; margin-top: 10px;"/>
                          
                          <br />
                          <asp:Label ID="Label_Descripcion2" runat="server" Text="Descripcion:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_Descripcion_ListarPropiedad" runat="server" Width="200px"
                                    style="margin-left: 60px; margin-top: 10px;"/>
                          
                          <br />
                          <asp:Label ID="Label_Fotografia_ListarPropiedad" runat="server" Text="Fotografia:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:FileUpload ID="FileUpload1" runat="server"
                                       style="margin-left: 70px; margin-top: 10px;"/>
                          
                          <br />                                                    
                          <asp:Label ID="Label_HoraEntrada" runat="server" Text="Hora Entrada:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:DropDownList ID="DropDownList_HoraEntrada_ListarPropiedad" runat="server" Width="75px"
                                         style="margin-left: 50px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>                          
                          <asp:DropDownList ID="DropDownList_TiempoEntrada_ListarPropiedad" runat="server" Width="75px" AutoPostBack="True"
                                         style="margin-left: 10px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>
                                                                              
                          <br />
                          <asp:Label ID="Label_HoraSalida" runat="server" Text="Hora Salida:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:DropDownList ID="DropDownList_HoraSalida_ListarPropiedad0" runat="server" Width="75px" AutoPostBack="True"
                                    style="margin-left: 60px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>                          
                          <asp:DropDownList ID="DropDownList_TiempoSalida_ListarPropiedad3" runat="server" Width="75px" AutoPostBack="True"
                                    style="margin-left: 10px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>
                          
                          <br />                          
                          <asp:Label ID="Label_Pais_ListarPropiedad" runat="server" Text="Localidad:"
                                    style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:DropDownList ID="DropDownList_Localidad_ListarPropiedad" runat="server" Width="200px" AutoPostBack="True"
                                    style="margin-left: 70px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                                                    
                          <br />
                          <asp:Label ID="Label_TipoHospedaje_ListarPropiedad" runat="server" Text="Tipo de Hospedaje:"
                                  style="margin-left: 10px; margin-top: 10px;"/>              
                          <asp:DropDownList ID="DropDownList_Hospedaje_ListarPropiedad0" runat="server" Width="200px"
                                    style="margin-left: 15px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          
                          <br />                                                    
                          <asp:Label ID="Label_PrecioNoche" runat="server" Text="Precio por noche:"
                                    style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_PrecioNoche_ListarPropiedad" runat="server" Width="100px"
                                    style="margin-left: 25px; margin-top: 10px;"/>&nbsp;*

                          <br />                          
                          <asp:Label ID="Label_PrecioVolumen_ListarPropiedad" runat="server" Text="Precio por volumen:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_PrecioVolumen" runat="server" Width="100px"
                                    style="margin-left: 10px; margin-top: 10px;"/>&nbsp;*
                          
                          <br />                          
                          <asp:Label ID="Label_CantidadMinima" runat="server" Text="Cantidad volumen:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_CantidadNoches" runat="server" Width="100px"
                                    style="margin-left: 20px; margin-top: 10px;"/>

                          <br />
                          <asp:Button ID="Button_ListarPropiedad_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_ListarPropiedad_ListarPropiedad_Click" 
                              style="margin-left: 140px; margin-top: 2px" Text="Registrar" Width="90px" />
                          
                          <br /> <br /> <br /> * Precio en dolares estadounidenses.                          
                          <br /> <br /> **Dato opcional. 
                          <br /> <br />
                          
                      </asp:Panel>
                 </asp:View>
                <asp:View ID="ViewCrearViaje" runat="server">
                      <asp:Panel ID="Panel_ListarPropiedad0" runat="server" BackColor="White" 
                          BorderStyle="Groove" HorizontalAlign="Left" ScrollBars="Vertical" 
                          style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                          
                          <asp:Label ID="Label_Titulo0" runat="server" Text="Titulo:"></asp:Label>
                          
                          <asp:TextBox ID="TextBox_Titulo_Reservar" runat="server" Width="200px"></asp:TextBox>
                          
                          <br />
                          <br />
                          <asp:Label ID="Label_FechaInicio_Reservar" runat="server" 
                              Text="Fecha Inicio:"></asp:Label>
                          <asp:DropDownList ID="DropDownList_FechaInicioDia_Reservar" runat="server">
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
                          <asp:DropDownList ID="DropDownList_FechaInicioMes_Reservar" runat="server">
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
                          <asp:DropDownList ID="DropDownList_FechaInicioAho_Reservar" runat="server">
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
                          
                          <br />
                          <br />
                          
                          <asp:Label ID="Label_FechaFin" runat="server" Text="Fecha Fin:"></asp:Label>
                          <asp:DropDownList ID="DropDownList_FechaFinDia_Reservar" runat="server">
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
                          <asp:DropDownList 
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
                          <asp:DropDownList ID="DropDownList_FechaFinAho_Reservar" runat="server">
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
                          
                          <br />
                          
                          <br />
                          <br />
                          
                          <asp:Button ID="Button_CrearViaje_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_CrearViaje_ListarPropiedad_Click" 
                              style="margin-left: 0px; margin-top: 2px" Text="Crear" 
                              Width="150px" />
                          
                          <asp:Button ID="Button_Reservar_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              style="margin-left: 0px; margin-top: 2px" Text="Crear y Reservar" 
                              Width="150px" />
                          <br />
                          <br />
                          <br />
                          
                          <br />
                          
                          <br />
                          <br />
                          
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
