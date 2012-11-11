<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="MyBnB_Viajero.aspx.cs" Inherits="MyBnb.GUI.MyBnB_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<div>    
    <asp:Menu ID="MenuTabControl" runat="server" OnMenuItemClick="MenuTabControl_MenuItemClick" Orientation="Horizontal"
              style="left: 1px; position: relative; top: 30px" Height="38px" Width="127px" >
              <StaticMenuStyle HorizontalPadding="0px" VerticalPadding="0px" />
              <StaticSelectedStyle BackColor="#C0C0FF" BorderColor="#C0C0FF" />
              <Items>
                    <asp:MenuItem Text="tab1" Value="0" Selected="True"></asp:MenuItem>
                    <asp:MenuItem Text="tab2" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="tab3" Value="2"></asp:MenuItem>
              </Items>
              <StaticHoverStyle BackColor="Silver" />
              <StaticMenuItemStyle BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
    </asp:Menu>
</div>

<div style="width: 429px; height: 191px; background-color: #C0C0FF;">
            <asp:MultiView ID="MultiViewTabControl" runat="server">
                 <asp:View ID="View1" runat="server">
                      <br /> CONTENTS OF TAB1 (view1).</asp:View>
                 <asp:View ID="View2" runat="server">
                      <br /> CONTENTS OF TAB2(view2)<br /></asp:View>
                <asp:View ID="View3" runat="server">
                      <br />CONTENTS OF TAB3(view3)</asp:View>
            </asp:MultiView>
</div>

</asp:Content>
