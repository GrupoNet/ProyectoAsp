<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebProducto.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
     <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
     </asp:Menu>
     <br />
     <table class="auto-style3">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Codigo del Producto"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDescrip" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Categoria</td>
        <td class="auto-style1">
            <asp:DropDownList ID="ddlCategoria" runat="server">
                <asp:ListItem>Deportivo</asp:ListItem>
                <asp:ListItem>Clasico</asp:ListItem>
                <asp:ListItem>4X4</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Cantidad</td>
        <td>
            <asp:TextBox ID="txtCant" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Precio</td>
        <td>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </td>
    </tr>
     
</table>

  <asp:Panel ID="pnlBotones" runat="server" CssClass="align-baseline">
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        <br />
        <br />
        <br />
        <br />
   </asp:Panel>
</asp:Content>
