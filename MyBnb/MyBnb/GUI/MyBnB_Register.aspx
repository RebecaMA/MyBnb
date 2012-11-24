<%@ Page Title="MyBnB - Registrarse" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Register.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        #Text1
        {
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Panel ID="Panel_Login" runat="server" 
        HorizontalAlign="Right" BackColor="#EEEEEE" 
        
    style="margin-left: 0px; margin-bottom:0; margin-right:0; margin-right:0;" 
    Height="558px" Width="960px">
        
        <br />        
        <asp:Image ID="Image_LogoMyBnB" runat="server"  ImageAlign="Left" 
            Height="101px" Width="403px" ImageUrl="~/Images/MyBnB.PNG" 
            style="margin-left: 25px; margin-top: 144px"/>

        <asp:Panel ID="Panel_CrearUsuario" runat="server" BorderStyle="Solid" HorizontalAlign="Left" 
            style="margin-left: 509px; margin-top: 50px; margin-right: 40px;">
            
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderColor="#EEEEEE" 
                BorderStyle="Double" Height="25px" HorizontalAlign="Left">                  
            <asp:Label ID="Label_Registrarse" runat="server" style="font-weight: 700" 
                    Text="Registrarse" Height="20px"/>
            </asp:Panel>

            <br /> 
            <asp:Label ID="Label_Nombre" runat="server" Text="Nombre:"
                    style="margin-left: 5px; margin-top: 5px"/>                        
            <asp:TextBox ID="TextBox_Nombre" runat="server" Width="200px"
                      style="margin-left: 80px; margin-top: 5px" />

            <br />            
            <asp:Label ID="Label_Apellidos" runat="server" Text="Apellidos:"
                    style="margin-left: 5px; margin-top: 10px" />            
            <asp:TextBox ID="TextBox_Apellido" runat="server" Width="200px"
                      style="margin-left: 76px; margin-top: 10px" />
            
            <br />            
            <asp:Label ID="Label_Pais" runat="server" Text="Pais:"
                    style="margin-left: 5px; margin-top: 10px" />            
            <asp:TextBox ID="TextBox_Pais" runat="server" Width="200px"
                      style="margin-left: 107px; margin-top: 10px" />
                        
            <br />            
            <asp:Label ID="Label_Email" runat="server" Text="Email:"
                    style="margin-left: 5px; margin-top: 10px" />
            
            <asp:TextBox ID="TextBox_Email" runat="server" Width="200px"
                      style="margin-left: 100px; margin-top: 10px" />
            <br />
            <asp:Label ID="Label_Telefono" runat="server" Text="Telefono:"
                    style="margin-left: 5px; margin-top: 10px" />                        
            <asp:TextBox ID="TextBox_Telefono" runat="server" Width="200px"
                      style="margin-left: 80px; margin-top: 10px" />

            <br />
            <br />
            <asp:Label ID="Label_FechaNacimiento" runat="server" Text="Fecha de Nacimiento:     "
                style="margin-left: 5px; margin-top: 10px" />
                
            &nbsp;<script type="text/javascript">


                function openCalendar() {
                    if (divCalendar.style.display == "none")
                        divCalendar.style.display = "inline";
                    else
                        divCalendar.style.display = "none";
                }
            </script><div ID="divCalendar" style="display: none; position: absolute">
                <asp:Calendar ID="CalendarModificarUsuario" runat="server" BackColor="White" 
                    BorderColor="#999999" BorderStyle="Outset" BorderWidth="2px" CellPadding="4" 
                    DayNameFormat="FirstLetter" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="Black" Height="180px" 
                    onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                </asp:Calendar>
            </div>
            <asp:DropDownList ID="DropDownListDia_R" runat="server" style="margin-top: 20">
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
            <asp:DropDownList ID="DropDownListMes_R" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                style="margin-top: 20">
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
            <asp:DropDownList ID="DropDownListA_R" runat="server" style="margin-top: 20">
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
            &nbsp;<br />
            <asp:Label ID="Label_Sexo" runat="server" 
                style="margin-left: 5px; margin-top: 10px" Text="Genero:" />
            <asp:DropDownList ID="DropDownList_Genero" runat="server" 
                style="margin-left: 88px; margin-top: 10px" Width="200px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<br />&nbsp;<asp:Label ID="Label_Descripcion" runat="server" 
                style="margin-left: 5px; margin-top: 10px" Text="Descripcion:" />
            <asp:TextBox ID="TextBox_Descripcion" runat="server" Width="200px"
                      style="margin-left: 60px; margin-top: 10px" />
            
            <br />
            <asp:Button ID="Button_Registrarse" runat="server" BackColor="#7AB428" 
                Height="30px" onclick="Button_Registrarse_Click" Text="Registrarse" Width="90px"
                style="margin-left: 250px; margin-top: 10px" />
            <br /><br />
        </asp:Panel>
    </asp:Panel>
    <br /><br />
</asp:Content>
