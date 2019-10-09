<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebProducto.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #f1f1f1
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
    </asp:SiteMapPath>
    <div class="col-md-6">
        <div class="form-label-group">
            <asp:Label ID="Label1" runat="server" Text="Codigo del Producto"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server" autofocus="autofocus" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-label-group">
            <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
            <asp:TextBox ID="txtDescrip" runat="server" autofocus="autofocus" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-label-group">
            <asp:Label ID="Label4" runat="server" Text="Cantidad"></asp:Label>
            <asp:TextBox ID="txtCant" runat="server" autofocus="autofocus" CssClass="form-control"></asp:TextBox>
 </div>
    </div>
    <div class="col-md-6">
        <div class="form-label-group">
            <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server" autofocus="autofocus" CssClass="form-control"></asp:TextBox>

        </div>
    </div>
    <div class="dropdown-content">
        <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="dropbtn">
            <asp:ListItem>Deportivo</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>

    </div>
    
    <%--<td class="auto-style5">
            <asp:DropDownList ID="ddlCategoria" runat="server">
                <asp:ListItem>Deportivo</asp:ListItem>
            	<asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>--%>

    <%--<tr>
        <td class="auto-style2"></td>
        <td class="auto-style4">
            <asp:TextBox ID="txtCant" runat="server"></asp:TextBox>
        </td>
    </tr>--%>
    <%-- <tr>
        <td class="auto-style2">Precio</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </td>
    </tr>--%>
    
    <asp:Panel ID="pnlBotones" runat="server" CssClass="align-baseline">
        <div class="align-content-center">
            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" CssClass="btn btn-primary" />
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" CssClass="btn btn-primary" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn btn-primary" />
        </div>
        <div>
            <asp:GridView ID="gdAuto" runat="server">
        </asp:GridView>
        </div>
    </asp:Panel>
</asp:Content>