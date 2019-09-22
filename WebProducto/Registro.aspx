<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebProducto.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style3">
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Codigo del Producto"></asp:Label>
        </td>
        <td>
        &nbsp;<asp:TextBox ID="txtCodigo" runat="server" OnLoad="txtCodigo_Unload"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDescrip" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="Label3" runat="server" Text="Precio Unitario"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Stock </td>
        <td>
            <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">Stock Crítico</td>
        <td>
            <asp:TextBox ID="txtStockCritico" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtStock" ControlToValidate="txtStockCritico" ErrorMessage="El stock critico debe ser menor que el stock" Operator="LessThan" Type="Double"></asp:CompareValidator>
        </td>
    </tr>
     
</table>

  <asp:Panel ID="pnlBotones" runat="server" CssClass="align-baseline">
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
   </asp:Panel>
</asp:Content>
