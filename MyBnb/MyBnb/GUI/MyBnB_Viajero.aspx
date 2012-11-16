<%@ Page Title="MyBnB - Viajero" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Viajero.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Viajero"%>
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

<div style="width: 957px; height: 10px; background-color: #C0C0FF;">
            <asp:MultiView ID="MultiViewTabControl" runat="server">
                 <asp:View ID="ViewModificarUsuario" runat="server">

                      <asp:Panel ID="Panel_ModificarUsuario" runat="server" HorizontalAlign="Left" 
                              style="margin-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom:0px" 
                              BackColor="#E4E4E4" BorderStyle="Groove" Height="590px">
                              
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
                              src="http://www.snaphost.com/jquery/Calendar.aspx" id="Calendar_ModificarUsuario"></script>
                                                                                                                        
                              <br />                              
                              <asp:Label ID="Label_Sexo" runat="server" Text="Genero:"
                                  style="margin-left: 10px; margin-top: 10px;" />
                              <asp:DropDownList ID="DropDownList_Genero_ModificarUsuario" runat="server" 
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
                                  BackColor="#671160" ForeColor="White" Height="30px" 
                                  onclick="Button_Modificar_ModificarUsuario_Click" 
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
                      <asp:Panel ID="Panel_ListarPropiedad" runat="server" BackColor="#E4E4E4" 
                                 BorderStyle="Groove" HorizontalAlign="Left" 
                                 style="margin-left: 0px; margin-top: 0px; margin-right: 0px;" 
                                 Height="590px">
                              
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
                          <asp:FileUpload ID="FileUpload_Fotografia_ListarPropiedad" runat="server"
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
                          <asp:DropDownList ID="DropDownList_HoraSalida_ListarPropiedad" runat="server" 
                              Width="75px" AutoPostBack="True"
                                    style="margin-left: 60px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>                          
                          <asp:DropDownList ID="DropDownList_TiempoSalida_ListarPropiedad" runat="server" 
                              Width="75px" AutoPostBack="True"
                                    style="margin-left: 10px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>
                          
                          <br />                          
                          <asp:Label ID="Label_Localidad_ListarPropiedad" runat="server" Text="Localidad:"
                                    style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:DropDownList ID="DropDownList_Localidad_ListarPropiedad" runat="server" Width="200px" AutoPostBack="True"
                                    style="margin-left: 70px; margin-top: 10px;">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                                                    
                          <br />
                          <asp:Label ID="Label_TipoHospedaje_ListarPropiedad" runat="server" Text="Tipo de Hospedaje:"
                                  style="margin-left: 10px; margin-top: 10px;"/>              
                          <asp:DropDownList ID="DropDownList_TipoHospedaje_ListarPropiedad" 
                              runat="server" Width="200px"
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
                          <asp:TextBox ID="TextBox_PrecioVolumen_ListarPropiedad" runat="server" Width="100px"
                                    style="margin-left: 10px; margin-top: 10px;"/>&nbsp;*
                          
                          <br />                          
                          <asp:Label ID="Label_CantidadMinima" runat="server" Text="Cantidad volumen:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_CantidadVolumen_ListarPropiedad" runat="server" Width="100px"
                                    style="margin-left: 20px; margin-top: 10px;"/>

                          <br /> <br />
                          <asp:Button ID="Button_Registrar_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_Registrar_ListarPropiedad_Click" 
                              style="margin-left: 140px; margin-top: 2px" Text="Registrar" 
                              Width="90px" />
                          
                          <br /> <br /> <br /> * Precio en dolares estadounidenses.                          
                          <br /> <br /> **Dato opcional. 
                          <br /> <br />
                          
                      </asp:Panel>
                 </asp:View>

                <asp:View ID="ViewCrearViaje" runat="server">
                      <asp:Panel ID="Panel_CrearViaje" runat="server" BackColor="#E4E4E4" 
                          BorderStyle="Groove" HorizontalAlign="Left" 
                          style="margin-left: 0px; margin-top: 0px; margin-right: 0px;" Height="590px">
                          
                          <br />
                          <asp:Label ID="Label_Titulo0" runat="server" Text="Titulo:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                          <asp:TextBox ID="TextBox_Titulo_CrearViaje" runat="server" Width="200px"
                                    style="margin-left: 43px; margin-top: 10px;"/>
                                                    
                          <br /> <br />
                          <asp:Label ID="Label_FechaInicio_Reservar" runat="server" Text="Fecha Inicio:"
                                  style="margin-left: 10px; margin-top: 10px;"/>&nbsp;&nbsp;
                          <script type="text/javascript"
                          src="http://www.snaphost.com/jquery/Calendar.aspx" id="Calendar_FechaInicio_Reservar"></script>
                                                    
                          <br /> <br />
                          <asp:Label ID="Label_FechaFin" runat="server" Text="Fecha Fin:"
                                  style="margin-left: 10px; margin-top: 10px;"/>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                         

                          <script type="text/javascript">
                                  $(function () {
                                      $("#Calendar_CrearViaje")
                          .datepicker({ showOn: 'both', buttonImage: 'http://www.snaphost.com/jquery/calendar.gif',
                              buttonImageOnly: true, changeMonth: true, showOtherMonths: true, selectOtherMonths: true
                          });
                          });</script>                          

                          <form action="MyBnB_Viajero.aspx.cs" method="post">
                               <input name="Calendar_CrearViaje" id="Calendar_CrearViaje" type="text" />
                          </form>

                          <br /> <br />
                          <asp:Button ID="Button_Crear_CrearViaje" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_CrearViaje_CrearViaje_Click" 
                              Text="Crear" Width="150px"
                              style="margin-left: 90px; margin-top: 10px;"/>
                          
                          <asp:Button ID="Button_CrearReservar_CrearViaje" runat="server" 
                              BackColor="#671160" ForeColor="White" Height="30px" 
                              Text="Crear y Reservar" Width="150px"
                              style="margin-left: 10px; margin-top: 10px;" 
                              onclick="Button_CrearReservar_CrearViaje_Click"/>

                          <br /> <br />
                      </asp:Panel>
                 </asp:View>

                 <asp:View ID="ViewPropiedades" runat="server">
                     <asp:Panel ID="Panel_Propiedades" runat="server" BackColor="#E4E4E4" 
                         BorderStyle="Groove" HorizontalAlign="Left" 
                         style="margin-left: 0px; margin-top: 0px; margin-right: 0px;" 
                         Height="490px">
                         <br />
                         <asp:Label ID="Label_Localidad_Propiedades" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Localidad:" />
                         <asp:DropDownList ID="DropDownList_Localidad_Propiedades" runat="server" 
                             AutoPostBack="True" style="margin-left: 20px; margin-top: 10px;" Width="200px">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         
                         <br /> <br />
                         <asp:Label ID="Label_FechaInicio_Propiedades" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Fecha Inicio:" />&nbsp;&nbsp;
                         <script src="http://www.snaphost.com/jquery/Calendar.aspx" 
                             type="text/javascript">
                         </script>
                         
                         <br /> <br />
                         <asp:Label ID="Label_FechaFin_Propiedades" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Fecha Fin:" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <script type="text/javascript">
                             $(function () {
                                 $("#Calendar_Propiedades")
                         .datepicker({ showOn: 'both', buttonImage: 'http://www.snaphost.com/jquery/calendar.gif',
                             buttonImageOnly: true, changeMonth: true, showOtherMonths: true, selectOtherMonths: true
                         });
                         });</script>
                         <input name="Calendar_Propiedades" id="Calendar_Propiedades" type="text" />
                         
                         <br /> <br />
                         <asp:Button ID="Button_Filtrar_Propiedades" runat="server" BackColor="#671160" 
                             Text="Filtrar" Width="150px"
                             ForeColor="White" Height="30px" 
                             style="margin-left: 85px; margin-top: 10px;" 
                             onclick="Button_Filtrar_Propiedades_Click1" />
                         
                         <br /> <br />
                         <asp:GridView ID="GridView_Propiedades" runat="server"
                                    style="margin-left: 30px; margin-right: 30px; margin-top: 10px;" 
                             Width="858px" AutoGenerateColumns="False" ShowFooter="True" 
                             AutoGenerateSelectButton="True" 
                             >
                             <Columns>
                                 <asp:BoundField DataField="titulo" HeaderText="Titulo" 
                                     SortExpression="titulo" />
                                 <asp:BoundField DataField="cantidadMaximaPersonas" 
                                     HeaderText="Personas Maximas" SortExpression="cantidadMaximaPersonas" />
                                 <asp:BoundField DataField="precioNoche" HeaderText="Precio por Noche" 
                                     SortExpression="precioNoche" />
                                 <asp:BoundField DataField="ranking" HeaderText="Ranking" 
                                     SortExpression="ranking" />
                                 <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                                     SortExpression="descripcion" />
                                 <asp:BoundField DataField="cantidadMinimaNoches" 
                                     HeaderText="Noches Minimas:" SortExpression="cantidadMinimaNoches" />
                             </Columns>
                         </asp:GridView>
                         <br /> <br />
                         <asp:Button ID="Button_Ver_Propiedades" runat="server" 
                             BackColor="#7AB428" ForeColor="White" Height="30px" 
                             onclick="Button_Ver_Propiedades_Click" 
                             style="margin-left: 30px; margin-top: 10px;" Text="Ver" Width="150px" />
                         
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button_Reservar_Propiedades" runat="server" BackColor="#7AB428" 
                             ForeColor="White" Height="30px"  
                             style="margin-left: 30px; margin-top: 10px;" Text="Reservar" Width="150px" 
                             onclick="Button_Reservar_Propiedades_Click" />
                         
                         <br />
                     </asp:Panel>
                 </asp:View>

                 <asp:View ID="ViewSolicitarAnfitrion" runat="server">
                     <asp:Panel ID="Panel_SolicitarAnfitrion" runat="server" BackColor="#E4E4E4" 
                         BorderStyle="Groove" HorizontalAlign="Left" Height="590px"
                         style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                         
                         <br /> <br />                         
                         <asp:Label ID="Label1" runat="server" Text="Viaje:"
                                 style="margin-left: 60px; margin-top: 10px;" />
                         <asp:DropDownList ID="DropDownList_Viaje_SolicitarAnfitrion" 
                             runat="server" AutoPostBack="True" style="margin-left: 10px; margin-top: 10px;" 
                             Width="200px">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         
                         <br /> <br />
                         <asp:Label ID="Label2" runat="server" Text="Localidad:"
                                 style="margin-left: 30px; margin-top: 10px;" />
                         <asp:DropDownList ID="DropDownList_Localidad_SolicitarAnfitrion" runat="server" 
                             AutoPostBack="True" style="margin-left: 10px; margin-top: 10px;" Width="200px">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         <br />
                         
                         <br /> <br />
                         <asp:Button ID="Button_Solicitar_SolicitarAnfitrion" runat="server" 
                             BackColor="#7AB428" ForeColor="White" Height="30px" 
                             onclick="Button_Solicitar_SolicitarAnfitrion_Click" 
                             style="margin-left: 100px; margin-top: 10px;" Text="Solicitar" 
                             Width="150px" />
                         
                         <asp:Button ID="Button_VerRespuestas_SolicitarAnfitrion" runat="server" 
                             BackColor="#671160" ForeColor="White" Height="30px" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Ver Respuestas" 
                             Width="150px" onclick="Button_VerRespuestas_SolicitarAnfitrion_Click" />
                         <br />
                         <br />
                     </asp:Panel>
                 </asp:View>

                 <asp:View ID="ViewAdministrarWishlist" runat="server">
                     <asp:Panel ID="Panel_AdministrarWishList" runat="server" BackColor="#E4E4E4" 
                         BorderStyle="Groove" Height="490px" HorizontalAlign="Left" 
                         style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                         
                         <br /> <br />
                         <asp:GridView ID="GridView_WishList" runat="server" 
                             style="margin-left: 30px; margin-right: 30px; margin-top: 10px;" 
                             Width="858px" />
                         
                         <br /> <br />
                         <asp:Button ID="Button_Ver_AdministrarWishList" runat="server" BackColor="#7AB428" 
                             ForeColor="White" Height="30px" 
                             onclick="Button_Ver_AdministrarWishList_Click" 
                             style="margin-left: 30px; margin-top: 10px;" Text="Ver" Width="150px" />
                         <br /> <br />
                     </asp:Panel>
                 </asp:View>

            </asp:MultiView>
</div>

</asp:Content>
