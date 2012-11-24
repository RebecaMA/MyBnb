<%@ Page Title="MyBnB - Viajero" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Viajero.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Viajero"%>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">
    function openCalendar() {
        if (divCalendar.style.display == "none")
            divCalendar.style.display = "inline";
        else
            divCalendar.style.display = "none";
    }
</script>                                                  
    
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
                              <asp:TextBox ID="TextBox_Login_ModificarUsuario" runat="server" Width="227px"
                                        style="margin-left: 100px; margin-top: 10px;"/>
                              
                              <br />
                              <asp:Label ID="Label_Contrasena" runat="server" Text="Password:"
                                      style="margin-left: 10px; margin-top: 10px;"/>
                              <asp:TextBox ID="TextBox_Contrasena_ModificarUsuario" runat="server" 
                                  Width="227px" TextMode="Password"
                                        style="margin-left: 75px; margin-top: 10px;"/>
                              
                              <br />
                              <asp:Label ID="Label_Nombre" runat="server" Text="Nombre:"
                                  style="margin-left: 10px; margin-top: 10px;"/>                          
                              <asp:TextBox ID="TextBox_Nombre_ModificarUsuario" runat="server" Width="227px"
                                        style="margin-left: 83px; margin-top: 10px;"/>
                              
                              <br />
                              <asp:Label ID="Label_Apellidos" runat="server" Text="Apellidos:"
                                      style="margin-left: 10px; margin-top: 10px;"/>
                              <asp:TextBox ID="TextBox_Apellidos_ModificarUsuario" runat="server" Width="228px"
                                        style="margin-left: 80px; margin-top: 10px;"/>
                          
                              <br />
                              <asp:Label ID="Label_Pais" runat="server" Text="Pais:"
                                      style="margin-left: 10px; margin-top: 10px;"/>                          
                              <asp:TextBox ID="TextBox_Pais_ModificarUsuario" runat="server" Width="227px"
                                        style="margin-left: 110px; margin-top: 10px;"/>
                          
                              <br />
                              <asp:Label ID="Label_Email" runat="server" Text="Email:"
                                      style="margin-left: 10px; margin-top: 10px;"/>                          
                              <asp:TextBox ID="TextBox_Email_ModificarUsuario" runat="server" Width="227px"
                                        style="margin-left: 100px; margin-top: 10px;"/>
                              
                              <br />                       
                              <asp:Label ID="Label_Telefono" runat="server" Text="Telefono:"
                                      style="margin-left: 10px; margin-top: 10px;"/>
                              <asp:TextBox ID="TextBox_Telefono_ModificarUsuario" runat="server" Width="227px"
                                        style="margin-left: 80px; margin-top: 10px;"/>
                          
                              &nbsp; *<br /> <br />
                              <asp:Label ID="Label_FechaNacimiento" runat="server" 
                                  style="margin-left: 10px; margin-top: 30px;" Text="Fecha de Nacimiento:" />
                              &nbsp;&nbsp;<asp:DropDownList ID="DropDownListDia_Modificar" runat="server" 
                                  style="margin-top:20">
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
                              &nbsp;&nbsp;<asp:DropDownList ID="DropDownListMes_Modificar" runat="server" AutoPostBack="True" 
                                  
                                  style="margin-top:20">
                                  <asp:ListItem>- Mes - </asp:ListItem>
                                  <asp:ListItem>Enero</asp:ListItem>
                                  <asp:ListItem>Febrero</asp:ListItem>
                                  <asp:ListItem>Marzo</asp:ListItem>
                                  <asp:ListItem>Abril</asp:ListItem>
                                  <asp:ListItem>Mayo</asp:ListItem>
                                  <asp:ListItem>Junio</asp:ListItem>
                                  <asp:ListItem>Julio</asp:ListItem>
                                  <asp:ListItem>Agosto</asp:ListItem>
                                  <asp:ListItem>Setiembre</asp:ListItem>
                                  <asp:ListItem>Octubre</asp:ListItem>
                                  <asp:ListItem>Noviembre</asp:ListItem>
                                  <asp:ListItem>Diciembre</asp:ListItem>
                              </asp:DropDownList>
                              &nbsp;&nbsp;<asp:DropDownList ID="DropDownListAno_modificar" runat="server" 
                                  style="margin-top:20" 
                                  onselectedindexchanged="DropDownListAno_modificar_SelectedIndexChanged">
                                  <asp:ListItem>- Aho -</asp:ListItem>
                                    <asp:ListItem>1990</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>2001</asp:ListItem>
                                    <asp:ListItem>2002</asp:ListItem>
                                    <asp:ListItem>2003</asp:ListItem>
                                    <asp:ListItem>2005</asp:ListItem>
                                    <asp:ListItem>2006</asp:ListItem>
                                    <asp:ListItem>2007</asp:ListItem>
                                    <asp:ListItem>2008</asp:ListItem>
                                    <asp:ListItem>2009</asp:ListItem>
                                    <asp:ListItem>2010</asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                              </asp:DropDownList>
                              &nbsp;&nbsp;*<br />
                              <asp:Label ID="Label_Sexo" runat="server" 
                                  style="margin-left: 10px; margin-top: 10px;" Text="Genero:" />
                              <asp:DropDownList ID="DropDownList_Genero_ModificarUsuario" runat="server" 
                                  style="margin-left: 86px; margin-top: 10px;" Width="227px">
                                  <asp:ListItem></asp:ListItem>
                                  <asp:ListItem>Femenino</asp:ListItem>
                                  <asp:ListItem>Masculino</asp:ListItem>
                              </asp:DropDownList>
                              <br />
                              <asp:Label ID="Label_Descripcion0" runat="server" 
                                  style="margin-left: 10px; margin-top: 10px;" Text="Descripcion:" />
                              <asp:TextBox ID="TextBox_Descripcion_ModificarUsuario" runat="server" 
                                  Height="80px" style="margin-left: 61px; margin-top: 10px;" TextMode="MultiLine" 
                                  Width="227px" />
                              &nbsp; *<br />
                              <asp:Button ID="Button_Desactivar_ModificarUsuario" runat="server" 
                                  BackColor="#7AB428" ForeColor="White" Height="30px" 
                                  onclick="Button_Desactivar_ModificarUsuario_Click" 
                                  style="margin-left: 145px; margin-top: 10px;" Text="Desactivar" Width="90px" />
                              <asp:Button ID="Button_Modificar_ModificarUsuario" runat="server" 
                                  BackColor="#671160" ForeColor="White" Height="30px" 
                                  onclick="Button_Modificar_ModificarUsuario_Click" 
                                  style="margin-left: 15px; margin-top: 10px" Text="Modificar" Width="90px" />
                              <br />
                              <br />
                              &nbsp; * Campos opcionales.
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
                          
                          &nbsp;**<br />
                          <asp:Label ID="Label_Fotografia_ListarPropiedad" runat="server" 
                              style="margin-left: 10px; margin-top: 10px;" Text="Fotografia:" />
                          <asp:FileUpload ID="FileUpload_Fotografia_ListarPropiedad" runat="server" 
                              style="margin-left: 70px; margin-top: 10px;" />
                          &nbsp;**<br />
                          <asp:Label ID="Label_HoraEntrada" runat="server" 
                              style="margin-left: 10px; margin-top: 10px;" Text="Hora Entrada:" />
                          <asp:DropDownList ID="DropDownList_HoraEntrada_ListarPropiedad" runat="server" 
                              style="margin-left: 50px; margin-top: 10px;" Width="75px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList_TiempoEntrada_ListarPropiedad" 
                              runat="server" AutoPostBack="True" style="margin-left: 10px; margin-top: 10px;" 
                              Width="75px">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>

                          <br />                          
                          <asp:Label ID="Label_HoraSalida" runat="server" 
                              style="margin-left: 10px; margin-top: 10px;" Text="Hora Salida:" />
                          <asp:DropDownList ID="DropDownList_HoraSalida_ListarPropiedad" runat="server" 
                              AutoPostBack="True" style="margin-left: 60px; margin-top: 10px;" Width="75px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList_TiempoSalida_ListarPropiedad" runat="server" 
                              AutoPostBack="True" style="margin-left: 10px; margin-top: 10px;" Width="75px">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>
                          <br />
                          <asp:Label ID="Label_Localidad_ListarPropiedad" runat="server" 
                              style="margin-left: 10px; margin-top: 10px;" Text="Localidad:" />
                          <asp:DropDownList ID="DropDownList_Localidad_ListarPropiedad" runat="server" 
                              AutoPostBack="True" style="margin-left: 70px; margin-top: 10px;" Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          <br />
                          <asp:Label ID="Label_TipoHospedaje_ListarPropiedad" runat="server" 
                              style="margin-left: 10px; margin-top: 10px;" Text="Tipo de Hospedaje:" />
                          <asp:DropDownList ID="DropDownList_TipoHospedaje_ListarPropiedad" 
                              runat="server" style="margin-left: 15px; margin-top: 10px;" Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          <br />
                          <asp:Label ID="Label_PrecioNoche" runat="server" 
                              style="margin-left: 10px; margin-top: 10px;" Text="Precio por noche:" />
                          <asp:TextBox ID="TextBox_PrecioNoche_ListarPropiedad" runat="server" 
                              style="margin-left: 25px; margin-top: 10px;" Width="100px" />
                          &nbsp;*
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
                          
                          <br /> <br /> <br /> &nbsp;* Precio en dolares estadounidenses.                          
                          <br /> <br /> &nbsp;**Dato opcional. 
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
                                                    
                         <div id="div3" style="display: none; position: absolute">
                         <asp:Calendar ID="CalendarCrearViaje" runat="server" BackColor="White" 
                         BorderColor="#999999" BorderStyle="Outset" BorderWidth="2px" CellPadding="4" 
                         DayNameFormat="FirstLetter" Font-Names="Verdana" Font-Size="8pt" 
                         ForeColor="Black" Height="180px"
                         onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                         </asp:Calendar>
                         </div>

                          <br /> <br />
                          <asp:Label ID="Label_FechaInicio_Reservar" runat="server" Text="Fecha Inicio:"
                                  style="margin-left: 10px; margin-top: 10px;"/>&nbsp;&nbsp;

                          <asp:DropDownList ID="DropDownListFEDia_CrearViaje" runat="server" 
                              style="margin-top:20">
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
                          <asp:DropDownList ID="DropDownListDEMes_CV" runat="server" AutoPostBack="True" 
                              style="margin-top:20">
                              <asp:ListItem>- Mes - </asp:ListItem>
                              <asp:ListItem>Enero</asp:ListItem>
                              <asp:ListItem>Febrero</asp:ListItem>
                              <asp:ListItem>Marzo</asp:ListItem>
                              <asp:ListItem>Abril</asp:ListItem>
                              <asp:ListItem>Mayo</asp:ListItem>
                              <asp:ListItem>Junio</asp:ListItem>
                              <asp:ListItem>Julio</asp:ListItem>
                              <asp:ListItem>Agosto</asp:ListItem>
                              <asp:ListItem>Setiembre</asp:ListItem>
                              <asp:ListItem>Octubre</asp:ListItem>
                              <asp:ListItem>Noviembre</asp:ListItem>
                              <asp:ListItem>Diciembre</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownListFEAno_CV" runat="server" 
                              style="margin-top:20">
                              <asp:ListItem>- Aho -</asp:ListItem>
                              <asp:ListItem>2012</asp:ListItem>
                              <asp:ListItem>2013</asp:ListItem>
                              <asp:ListItem>2014</asp:ListItem>
                              <asp:ListItem>2015</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;<div ID="div4" style="display: none; position: absolute">
                              <asp:Calendar ID="CalendarCrearViajeFin" runat="server" BackColor="White" 
                                  BorderColor="#999999" BorderStyle="Outset" BorderWidth="2px" CellPadding="4" 
                                  DayNameFormat="FirstLetter" Font-Names="Verdana" Font-Size="8pt" 
                                  ForeColor="Black" Height="180px" 
                                  onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                              </asp:Calendar>
                          </div>
                          <br />
                          <br />
                          <asp:Label ID="Label_FechaInicio_Reservar0" runat="server" 
                              style="margin-left: 10px; margin-top: 10px;" Text="Fecha Fin:" />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownListFSDia_CV" runat="server" 
                              style="margin-top:20">
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
                          <asp:DropDownList ID="DropDownListFSMes_CV" runat="server" AutoPostBack="True" 
                              style="margin-top:20">
                              <asp:ListItem>- Mes - </asp:ListItem>
                              <asp:ListItem>Enero</asp:ListItem>
                              <asp:ListItem>Febrero</asp:ListItem>
                              <asp:ListItem>Marzo</asp:ListItem>
                              <asp:ListItem>Abril</asp:ListItem>
                              <asp:ListItem>Mayo</asp:ListItem>
                              <asp:ListItem>Junio</asp:ListItem>
                              <asp:ListItem>Julio</asp:ListItem>
                              <asp:ListItem>Agosto</asp:ListItem>
                              <asp:ListItem>Setiembre</asp:ListItem>
                              <asp:ListItem>Octubre</asp:ListItem>
                              <asp:ListItem>Noviembre</asp:ListItem>
                              <asp:ListItem>Diciembre</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownListFSAno_CV" runat="server" 
                              style="margin-top:20">
                              <asp:ListItem>- Aho -</asp:ListItem>
                              <asp:ListItem>2012</asp:ListItem>
                              <asp:ListItem>2013</asp:ListItem>
                              <asp:ListItem>2014</asp:ListItem>
                              <asp:ListItem>2015</asp:ListItem>
                          </asp:DropDownList>

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
                         &nbsp;<asp:DropDownList ID="DropDownList_Localidad_Propiedades" runat="server" 
                             AutoPostBack="True" style="margin-left: 20px; margin-top: 10px;" Width="200px">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         <br /> <br />
                         <asp:Label ID="Label_FechaInicio_Propiedades" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Fecha Inicio:" />
                         &nbsp;&nbsp;
                         


                         <form action="MyBnB_Viajero.aspx.cs" method="post">
                         </form>
                         <asp:DropDownList ID="DropDownListFIDia_Propiedades" runat="server" 
                             style="margin-top:20">
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
                         <asp:DropDownList ID="DropDownListFIMes_CV" runat="server" AutoPostBack="True" 
                             style="margin-top:20">
                             <asp:ListItem>- Mes - </asp:ListItem>
                             <asp:ListItem>Enero</asp:ListItem>
                             <asp:ListItem>Febrero</asp:ListItem>
                             <asp:ListItem>Marzo</asp:ListItem>
                             <asp:ListItem>Abril</asp:ListItem>
                             <asp:ListItem>Mayo</asp:ListItem>
                             <asp:ListItem>Junio</asp:ListItem>
                             <asp:ListItem>Julio</asp:ListItem>
                             <asp:ListItem>Agosto</asp:ListItem>
                             <asp:ListItem>Setiembre</asp:ListItem>
                             <asp:ListItem>Octubre</asp:ListItem>
                             <asp:ListItem>Noviembre</asp:ListItem>
                             <asp:ListItem>Diciembre</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownListFIAno_CV" runat="server" 
                             style="margin-top:20">
                             <asp:ListItem>- Aho -</asp:ListItem>
                             <asp:ListItem>2012</asp:ListItem>
                             <asp:ListItem>2013</asp:ListItem>
                             <asp:ListItem>2014</asp:ListItem>
                             <asp:ListItem>2015</asp:ListItem>
                         </asp:DropDownList>
                         <br /> <br />

                         <asp:Label ID="Label_FechaFin_Propiedades" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Fecha Fin:" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
                          <form action="MyBnB_Viajero.aspx.cs" method="post">
                          </form>
                         <asp:DropDownList ID="DropDownListFFDia_CV" runat="server" 
                             style="margin-top:20">
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
                         <asp:DropDownList ID="DropDownListFFMes_CV" runat="server" AutoPostBack="True" 
                             style="margin-top:20">
                             <asp:ListItem>- Mes - </asp:ListItem>
                             <asp:ListItem>Enero</asp:ListItem>
                             <asp:ListItem>Febrero</asp:ListItem>
                             <asp:ListItem>Marzo</asp:ListItem>
                             <asp:ListItem>Abril</asp:ListItem>
                             <asp:ListItem>Mayo</asp:ListItem>
                             <asp:ListItem>Junio</asp:ListItem>
                             <asp:ListItem>Julio</asp:ListItem>
                             <asp:ListItem>Agosto</asp:ListItem>
                             <asp:ListItem>Setiembre</asp:ListItem>
                             <asp:ListItem>Octubre</asp:ListItem>
                             <asp:ListItem>Noviembre</asp:ListItem>
                             <asp:ListItem>Diciembre</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownListFFAno_CV" runat="server" 
                             style="margin-top:20">
                             <asp:ListItem>- Aho -</asp:ListItem>
                             <asp:ListItem>2012</asp:ListItem>
                             <asp:ListItem>2013</asp:ListItem>
                             <asp:ListItem>2014</asp:ListItem>
                             <asp:ListItem>2015</asp:ListItem>
                         </asp:DropDownList>
                         <br /> <br />

                         <asp:Label ID="Label_Viaje" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Viaje:" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList_Viaje_Propiedades" runat="server" 
                             onselectedindexchanged="CambioViaje" 
                             style="margin-left: 20px; margin-top: 10px;" Width="200px">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         <br />
                         &nbsp;
                         <asp:Button ID="Button_Filtrar_Propiedades" runat="server" BackColor="#671160" 
                             ForeColor="White" Height="30px" onclick="Button_Filtrar_Propiedades_Click1" 
                             style="margin-left: 85px; margin-top: 10px;" Text="Filtrar" Width="150px" />
                         <br />
                         <br />
                         <asp:Panel ID="Panel1" runat="server">
                             <asp:GridView ID="GridView_Propiedades" runat="server" 
                                 AutoGenerateColumns="False" onselectedindexchanged="GriedViewPropiedades" 
                                 ShowFooter="True" 
                                 style="margin-left: 30px; margin-right: 30px; margin-top: 10px;" Width="858px">
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
                                     <asp:BoundField DataField="cantidadMinimaNoches" HeaderText="Noches Minimas:" 
                                         SortExpression="cantidadMinimaNoches" />
                                     <asp:TemplateField HeaderText="Seleccionar">
                                         <EditItemTemplate>
                                             <asp:CheckBox ID="CheckBox1" runat="server" />
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:CheckBox ID="CheckBox2" runat="server" />
                                         </ItemTemplate>
                                         <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                     </asp:TemplateField>
                                 </Columns>
                             </asp:GridView>
                         </asp:Panel>
                         <br />
                         <asp:Button ID="Button_Ver_Propiedades" runat="server" BackColor="#7AB428" 
                             ForeColor="White" Height="30px" onclick="Button_Ver_Propiedades_Click" 
                             style="margin-left: 30px; margin-top: 10px;" Text="Ver" Width="150px" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button_Reservar_Propiedades" runat="server" BackColor="#671160" 
                             ForeColor="White" Height="30px" onclick="Button_Reservar_Propiedades_Click" 
                             style="margin-left: 30px; margin-top: 10px;" Text="Reservar" 
                             Width="150px" />
                         
                         <br />
                     </asp:Panel>
                 </asp:View>

                 <asp:View ID="ViewSolicitarAnfitrion" runat="server">
                     <asp:Panel ID="Panel_SolicitarAnfitrion" runat="server" BackColor="#E4E4E4" 
                         BorderStyle="Groove" HorizontalAlign="Left" Height="590px"
                         style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                         
                         <br /> <br />
                         <asp:Label ID="Label2" runat="server" Text="Localidad:"
                                 style="margin-left: 20px; margin-top: 10px;" />
                         
                         &nbsp;
                         <asp:DropDownList ID="DropDownList_Localidad_SolicitarAnfitrion" runat="server" 
                             AutoPostBack="True" style="margin-left: 10px; margin-top: 10px;" Width="200px">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         <br /> <br /> &nbsp;                         

                         <div id="div1" style="display: none; position: absolute">
                         <asp:Calendar ID="CalendarSolicitarAnfitrionInicio" runat="server" BackColor="White" 
                         BorderColor="#999999" BorderStyle="Outset" BorderWidth="2px" CellPadding="4" 
                         DayNameFormat="FirstLetter" Font-Names="Verdana" Font-Size="8pt" 
                         ForeColor="Black" Height="180px"
                         onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                         </asp:Calendar>
                         </div>

                         <asp:Label ID="Label_FechaInicio_Propiedades0" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Fecha Inicio:" /> &nbsp;
                         <asp:DropDownList ID="DropDownList17" runat="server" style="margin-top:20">
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
                         <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True" 
                             style="margin-top:20">
                             <asp:ListItem>- Mes - </asp:ListItem>
                             <asp:ListItem>Enero</asp:ListItem>
                             <asp:ListItem>Febrero</asp:ListItem>
                             <asp:ListItem>Marzo</asp:ListItem>
                             <asp:ListItem>Abril</asp:ListItem>
                             <asp:ListItem>Mayo</asp:ListItem>
                             <asp:ListItem>Junio</asp:ListItem>
                             <asp:ListItem>Julio</asp:ListItem>
                             <asp:ListItem>Agosto</asp:ListItem>
                             <asp:ListItem>Setiembre</asp:ListItem>
                             <asp:ListItem>Octubre</asp:ListItem>
                             <asp:ListItem>Noviembre</asp:ListItem>
                             <asp:ListItem>Diciembre</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList19" runat="server" style="margin-top:20">
                             <asp:ListItem>- Aho -</asp:ListItem>
                             <asp:ListItem>2012</asp:ListItem>
                             <asp:ListItem>2013</asp:ListItem>
                             <asp:ListItem>2014</asp:ListItem>
                             <asp:ListItem>2015</asp:ListItem>
                         </asp:DropDownList>
                         &nbsp;<br /> 
                         <br />
                         <div ID="div2" style="display: none; position: absolute">
                             <asp:Calendar ID="CalendarSolicitarAnfitrionFin" runat="server" 
                                 BackColor="White" BorderColor="#999999" BorderStyle="Outset" BorderWidth="2px" 
                                 CellPadding="4" DayNameFormat="FirstLetter" Font-Names="Verdana" 
                                 Font-Size="8pt" ForeColor="Black" Height="180px" 
                                 onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                             </asp:Calendar>
                         </div>
                         &nbsp;&nbsp;<asp:Label ID="Label_FechaFin_Propiedades0" runat="server" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Fecha Fin:" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:DropDownList ID="DropDownList20" runat="server" style="margin-top:20">
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
                         <asp:DropDownList ID="DropDownList21" runat="server" AutoPostBack="True"  
                             style="margin-top:20">
                             <asp:ListItem>- Mes - </asp:ListItem>
                             <asp:ListItem>Enero</asp:ListItem>
                             <asp:ListItem>Febrero</asp:ListItem>
                             <asp:ListItem>Marzo</asp:ListItem>
                             <asp:ListItem>Abril</asp:ListItem>
                             <asp:ListItem>Mayo</asp:ListItem>
                             <asp:ListItem>Junio</asp:ListItem>
                             <asp:ListItem>Julio</asp:ListItem>
                             <asp:ListItem>Agosto</asp:ListItem>
                             <asp:ListItem>Setiembre</asp:ListItem>
                             <asp:ListItem>Octubre</asp:ListItem>
                             <asp:ListItem>Noviembre</asp:ListItem>
                             <asp:ListItem>Diciembre</asp:ListItem>
                         </asp:DropDownList>
                         <asp:DropDownList ID="DropDownList22" runat="server" style="margin-top:20">
                             <asp:ListItem>- Aho -</asp:ListItem>
                             <asp:ListItem>2012</asp:ListItem>
                             <asp:ListItem>2013</asp:ListItem>
                             <asp:ListItem>2014</asp:ListItem>
                             <asp:ListItem>2015</asp:ListItem>
                         </asp:DropDownList>

                         <br /> <br /> <br />
                         <asp:Button ID="Button_Solicitar_SolicitarAnfitrion" runat="server" 
                             BackColor="#7AB428" ForeColor="White" Height="30px" 
                             onclick="Button_Solicitar_SolicitarAnfitrion_Click" 
                             style="margin-left: 100px; margin-top: 10px;" Text="Solicitar" 
                             Width="150px" />
                         
                         <asp:Button ID="Button_VerRespuestas_SolicitarAnfitrion" runat="server" 
                             BackColor="#671160" ForeColor="White" Height="30px" 
                             style="margin-left: 10px; margin-top: 10px;" Text="Ver Respuestas" 
                             Width="150px" onclick="Button_VerRespuestas_SolicitarAnfitrion_Click1" />
                         <br />
                         <br />
                         <asp:Panel ID="Panel2" runat="server" Height="280px">
                             <asp:GridView ID="GridView_RespuestasAnfitriones" runat="server" 
                                 AutoGenerateColumns="False" onselectedindexchanged="GriedViewPropiedades" 
                                 ShowFooter="True" 
                                 style="margin-left: 30px; margin-right: 30px; margin-top: 10px;" Width="858px">
                                 <Columns>
                                     <asp:BoundField HeaderText="Localidad" ReadOnly="True" />
                                     <asp:BoundField HeaderText="Fecha Inicio" />
                                     <asp:BoundField HeaderText="Fecha Fin" />
                                     <asp:BoundField HeaderText="Anfitrion" />
                                     <asp:BoundField HeaderText="Descripcion" />
                                     <asp:TemplateField HeaderText="Seleccionar">
                                         <EditItemTemplate>
                                             <asp:CheckBox ID="CheckBox5" runat="server" />
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:CheckBox ID="CheckBox6" runat="server" />
                                         </ItemTemplate>
                                         <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                     </asp:TemplateField>
                                 </Columns>
                             </asp:GridView>                             
                         </asp:Panel>
                         <asp:Button ID="Button_Solicitud_AceptarAnfitrion" runat="server" 
                                 BackColor="#7AB428" ForeColor="White" Height="30px" 
                                 onclick="Button_Solicitar_SolicitarAnfitrion_Click" 
                                 style="margin-left: 30px; margin-top: 10px;" Text="Aceptar" 
                             Width="150px" />
                     </asp:Panel>
                 </asp:View>

                 <asp:View ID="ViewAdministrarWishlist" runat="server">
                     <asp:Panel ID="Panel_AdministrarWishList" runat="server" BackColor="#E4E4E4" 
                         BorderStyle="Groove" Height="490px" HorizontalAlign="Left" 
                         style="margin-left: 0px; margin-top: 0px; margin-right: 0px;">
                         
                         <br /> <br />
                         <asp:Panel ID="Panel3" runat="server" Height="364px">
                             <asp:GridView ID="GridView_WishList" runat="server" 
                                 AutoGenerateColumns="False" 
                                 onselectedindexchanged="GriedViewSelectionChange" 
                                 style="margin-left: 30px; margin-right: 30px; margin-top: 10px;" 
                                 Width="885px">
                                 <Columns>
                                     <asp:TemplateField HeaderText="Titulo Propiedad" SortExpression="titulo">
                                         <EditItemTemplate>
                                             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("titulo") %>'></asp:TextBox>
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:Label ID="Label5" runat="server" Text='<%# Bind("titulo") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Prioridad" SortExpression="prioridad">
                                         <EditItemTemplate>
                                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("prioridad") %>'></asp:TextBox>
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:Label ID="Label6" runat="server" Text='<%# Bind("prioridad") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Usuario que recomendo" 
                                         SortExpression="usuarioRecomendo">
                                         <EditItemTemplate>
                                             <asp:TextBox ID="TextBox7" runat="server" 
                                                 Text='<%# Bind("usuarioRecomendo") %>'></asp:TextBox>
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:Label ID="Label7" runat="server" Text='<%# Bind("usuarioRecomendo") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Tipo" SortExpression="tipo">
                                         <EditItemTemplate>
                                             <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("tipo") %>'></asp:TextBox>
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:Label ID="Label8" runat="server" Text='<%# Bind("tipo") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:BoundField DataField="estadoRecomendacion" 
                                         HeaderText="Estado Recomendacion" SortExpression="estadoRecomendacion" />
                                     <asp:TemplateField HeaderText="Seleccionar">
                                         <EditItemTemplate>
                                             <asp:CheckBox ID="CheckBox1" runat="server" />
                                         </EditItemTemplate>
                                         <ItemTemplate>
                                             <asp:CheckBox ID="CheckBox1" runat="server" />
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                 </Columns>
                             </asp:GridView>
                         </asp:Panel>
                         
                         <br />
                         <asp:Button ID="Button_Ver_AdministrarWishList" runat="server" BackColor="#7AB428" 
                             ForeColor="White" Height="30px"  
                             style="margin-left: 30px; margin-top: 0px;" Text="Ver" Width="160px" 
                             onclick="Button_Ver_AdministrarWishList_Click1" />
                         <asp:Button ID="Button_AceptarWishlist" runat="server" 
                             BackColor="#671160" ForeColor="White" Height="30px" 
                             style="margin-left: 30px; margin-top: 10px;" Text="Aceptar Recomendacion " 
                             Width="160px" onclick="Button_AceptarWishlist_Click" />
                         <asp:Button ID="Button_RechazarWishist" runat="server" 
                             BackColor="#7AB428" ForeColor="White" Height="30px" 
                             style="margin-left: 30px; margin-top: 10px;" Text="Rechazar Recomendacion" 
                             Width="160px" onclick="Button_RechazarWishist_Click" />
                         <br /> <br />
                     </asp:Panel>
                 </asp:View>

            </asp:MultiView>
</div>

</asp:Content>
