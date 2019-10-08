<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebProducto.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
					body {
			background-image: url('/Img/auto1.jpg');
			background-repeat: no-repeat;
			background-size: 100%;
			margin: 0px;
			background-color: #FFFFFF;
		}
        .auto-style1 {
            height: 26px;
        }
    	.buttonCrear {
    		background-color: #008CBA;
    		display: inline-block;
    		padding: 10px 10px;
    		font-size: 15px;
    		cursor: pointer;
    		text-align: center;
    		text-decoration: none;
    		outline: none;
    		color: #fff;
    		border: none;
    		border-radius: 15px;
    	}
		.buttonModificar {
    		background-color: #33FF37;
    		display: inline-block;
    		padding: 10px 10px;
    		font-size: 15px;
    		cursor: pointer;
    		text-align: center;
    		text-decoration: none;
    		outline: none;
    		color: #fff;
    		border: none;
    		border-radius: 15px;
			border-color: darkgrey;    

		}
		.buttonEliminar {
    		background-color: #FF3733;
    		display: inline-block;
    		padding: 10px 10px;
    		font-size: 15px;
    		cursor: pointer;
    		text-align: center;
    		text-decoration: none;
    		outline: none;
    		color: #fff;
    		border: none;
    		border-radius: 15px;
			border-color: darkgrey;    

		}
    	.auto-style2 {
			width: 204px;
		}
		.auto-style3 {
			height: 26px;
			width: 204px;
		}
		.auto-style4 {
			width: 318px;
		}
		.auto-style5 {
			height: 26px;
			width: 318px;
		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:SiteMapPath ID="SiteMapPath1" runat="server">
     </asp:SiteMapPath>
     <table class="auto-style3">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Codigo del Producto"></asp:Label>
        </td>
        <td class="auto-style4">
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtDescrip" runat="server"></asp:TextBox>
        </td>
    	<td>
			<img alt="" src="/Img/auto1.jpg" /></td>
    </tr>
    <tr>
        <td class="auto-style1">
            Categoria</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Cantidad</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtCant" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Precio</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </td>
    </tr>
     
</table>

  <asp:Panel ID="pnlBotones" runat="server" CssClass="align-baseline">
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" CssClass="buttonCrear" />
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" CssClass="buttonModificar" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click"    CssClass ="buttonEliminar" />
        <br />
        <br />
        <br />
        <asp:GridView ID="gdAuto" runat="server">
        </asp:GridView>
        <br />
        <br />
        <br />
   </asp:Panel>
</asp:Content>
