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
                    <asp:MenuItem Text="Reservar Viaje" Value="2"></asp:MenuItem>
                    <asp:MenuItem Text="Solicitar Anfitrión" Value="3"></asp:MenuItem>
                    <asp:MenuItem Text="Administrar Wishlist" Value="4"></asp:MenuItem>
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
                              onclick="Button_Modificar_Click" style="margin-left: 0px; margin-top: 2px" 
                              Text="Desactivar" Width="90px" />
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
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_Tipo_ListarPropiedad" runat="server" 
                              Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Capacidad" runat="server" Text="Capacidad:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_Capacidad_ListarPropiedad" runat="server" 
                              Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_Descripcion2" runat="server" Text="Descripcion:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Descripcion_ListarPropiedad" runat="server" 
                              Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_Fotografia_ListarPropiedad" runat="server" 
                              Text="Fotografia:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:TextBox ID="TextBox_Fotografia_ListarPropiedad" runat="server" 
                              Width="200px"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
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
                              runat="server" Width="75px">
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
                          <asp:DropDownList ID="DropDownList_HoraEntrada_ListarPropiedad0" runat="server" 
                              Width="75px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_TiempoSalida_ListarPropiedad3" 
                              runat="server" Width="75px">
                              <asp:ListItem></asp:ListItem>
                              <asp:ListItem>AM</asp:ListItem>
                              <asp:ListItem>PM</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_Pais_ListarPropiedad" runat="server" Text="Pais:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_Pais_ListarPropiedad" runat="server" 
                              Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          <asp:Label ID="Label_TipoHospedaje_ListarPropiedad" runat="server" 
                              Text="Tipo de Hospedaje:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_Pais_ListarPropiedad0" runat="server" 
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
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_HoraEntrada_ListarPropiedad1" runat="server" 
                              Width="100px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <asp:Button ID="Button_ListarPropiedad_ListarPropiedad" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_Modificar_Click" style="margin-left: 0px; margin-top: 2px" 
                              Text="Registrar" Width="90px" />
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
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                      </asp:Panel>
                 </asp:View>
                <asp:View ID="ViewReservarViaje" runat="server">
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
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_FechaFin" runat="server" Text="Fecha Fin:"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label_Localidad" runat="server" Text="Localidad:"></asp:Label>
                          &nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList_Localidad_Reervar" runat="server" 
                              Width="200px">
                              <asp:ListItem></asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button_Ver_ListarPropiedad0" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_Modificar_Click" style="margin-left: 0px; margin-top: 2px" 
                              Text="Ver" Width="90px" />
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button_Reservar_ListarPropiedad1" runat="server" 
                              BackColor="#7AB428" ForeColor="White" Height="30px" 
                              onclick="Button_Modificar_Click" style="margin-left: 0px; margin-top: 2px" 
                              Text="Reservar" Width="90px" />
                          <br />
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                 <asp:View ID="ViewSolicitarAnfitrion" runat="server">
                 </asp:View>
                 <asp:View ID="ViewAdministrarWishlist" runat="server">
                 </asp:View>
            </asp:MultiView>
</div>

</asp:Content>
