﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Perfiles.aspx.vb" Inherits="ProyectoDMS.Perfiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
.form-style-9{
	max-width: 800px;
	background: #FAFAFA;
	padding: 30px;
	margin: 50px auto;
	box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
	border-radius: 10px;
	border: 6px solid #305A72;
}
.form-style-9 ul{
	padding:0;
	margin:0;
	list-style:none;
}
.form-style-9 ul li{
	display: block;
	margin-bottom: 10px;
	min-height: 35px;
}
.form-style-9 ul li  .field-style{
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	padding: 8px;
	outline: none;
	border: 1px solid #B0CFE0;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;

}.form-style-9 ul li  .field-style:focus{
	box-shadow: 0 0 5px #B0CFE0;
	border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-split{
	width: 49%;
}
.form-style-9 ul li .field-full{
	width: 100%;
}
.form-style-9 ul li input.align-left{
	float:left;
}
.form-style-9 ul li input.align-right{
	float:right;
}
.form-style-9 ul li textarea{
	width: 100%;
	height: 100px;
}
.form-style-9 ul li input[type="button"], 
.form-style-9 ul li input[type="submit"] {
	-moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
	-webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
	box-shadow: inset 0px 1px 0px 0px #3985B1;
	background-color: #216288;
	border: 1px solid #17445E;
	display: inline-block;
	cursor: pointer;
	color: #FFFFFF;
	padding: 8px 18px;
	text-decoration: none;
	font: 12px Arial, Helvetica, sans-serif;
}
.form-style-9 ul li input[type="button"]:hover, 
.form-style-9 ul li input[type="submit"]:hover {
	background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
	background-color: #28739E;
}
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 439px;
        }
        .auto-style4 {
            width: 108px;
        }
        .auto-style5 {
            width: 146px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            max-width: 800px;
            background: #FAFAFA;
            padding: 30px;
            margin: 50px auto;
            box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
            border-radius: 10px;
            border: 6px solid #305A72;
            width: 1019px;
        }
        .auto-style8 {
            width: 193px;
        }
        .auto-style9 {
            height: 23px;
            width: 869px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style7">
  
     <table class="auto-style6">
         <tr>
             <td class="auto-style1">
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="REGISTRO Y/O MANTENIMIENTO DE PERFILES"></asp:Label>
             </td>
         </tr>
     </table>
     <table style="width:100%;">
         
         <tr>
             <td class="auto-style8">NOMBRE PERFIL</td>
             <td class="auto-style2">
                 <asp:TextBox ID="txtNombrePerfil" runat="server" Width="215px"></asp:TextBox>
             </td>
            <td class="auto-style5">
            <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" Width="119px" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">ESTADO PERFIL</td>
             <td class="auto-style2">
                 <asp:CheckBox ID="CheckPerfil" runat="server"></asp:CheckBox>
             </td>
              <td class="auto-style5">
             <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="119px" />
             </td>
             <td class="auto-style4">&nbsp;</td>
             <td>&nbsp;</td>
            </tr>
         <tr>
             <td></td>
             <td></td>
             <td class="auto-style5">
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="119px" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
         </tr>
         <tr>
             <td colspan="2">
                 <asp:TextBox ID="txtBuscar" runat="server" Width="502px"></asp:TextBox>
             </td>
             <td class="auto-style5">
                 <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="119px" />
             </td>
             <td class="auto-style4">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="600px">
         <Columns>
             <asp:BoundField DataField="Id" HeaderText="ID" />
             <asp:BoundField DataField="Profile" HeaderText="NOMBRE PERFIL" />
             <asp:BoundField DataField="Active" HeaderText="ACTIVO" />
         </Columns>
     </asp:GridView>
  
    </form>
</body>
</html>
