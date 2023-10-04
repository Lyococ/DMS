<%@ Page Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetalleTareas.aspx.vb" Inherits="ProyectoDMS.DetalleTareas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <!DOCTYPE html>
        <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title></title>
            <style type="text/css">
                .form-style-9 {
                    max-width: 800px;
                    background: #FAFAFA;
                    padding: 30px;
                    margin: 50px auto;
                    box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
                    border-radius: 10px;
                    border: 6px solid #305A72;
                }

                    .form-style-9 ul {
                        padding: 0;
                        margin: 0;
                        list-style: none;
                    }

                        .form-style-9 ul li {
                            display: block;
                            margin-bottom: 10px;
                            min-height: 35px;
                        }

                            .form-style-9 ul li .field-style {
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
                            }

                                .form-style-9 ul li .field-style:focus {
                                    box-shadow: 0 0 5px #B0CFE0;
                                    border: 1px solid #B0CFE0;
                                }

                            .form-style-9 ul li .field-split {
                                width: 49%;
                            }

                            .form-style-9 ul li .field-full {
                                width: 100%;
                            }

                            .form-style-9 ul li input.align-left {
                                float: left;
                            }

                            .form-style-9 ul li input.align-right {
                                float: right;
                            }

                            .form-style-9 ul li textarea {
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
            <form id="form1" class="auto-style7">

                <table class="auto-style6">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="REGISTRO Y ASIGNACIÓN DE TAREAS"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%;">

                    <tr>
                        <td class="auto-style8">NOMBRE TAREA</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtNombreTarea" runat="server" Width="215px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" Width="119px" />
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">DESCRIPCIÓN</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtDescripcion" runat="server" Width="215px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="119px" />
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">ESTADO TAREA</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDown1" runat="server" Width="225px"></asp:DropDownList>
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="119px" />
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">CATEGORIA</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDown2" runat="server" Width="225px"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">USUARIO ASIGNADO</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="225px"></asp:DropDownList>
                        </td>


                    </tr>
                    <tr>
                        <td class="auto-style8">FECHA LIMITE</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtFechaLimite" runat="server" Width="225px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">USUARIO REGISTRA</td>
                        <td class="auto-style2">
                            <asp:Label ID="LabelRegistra" runat="server" Width="225px"></asp:Label>
                        </td>
                        <td class="auto-style8">FECHA REGISTRO</td>
                        <td class="auto-style2">
                            <asp:Label ID="LabelFechaRegistro" runat="server" Width="225px"></asp:Label>
                        </td>


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
                        <asp:BoundField DataField="Task" HeaderText="NOMBRE TAREA" />
                        <asp:BoundField DataField="Description" HeaderText="DESCRIPCION" />
                        <asp:BoundField DataField="IdStateTask" HeaderText="ESTADO TAREA" />
                        <asp:BoundField DataField="IdCategory" HeaderText="CATEGORIA" />
                        <asp:BoundField DataField="IdUserAssignment" HeaderText="USUARIO ASIGNADO" />
                        <asp:BoundField DataField="ExpirationDate" HeaderText="FECHA LIMITE" />
                        <asp:BoundField DataField="IdUser" HeaderText="USUARIO REGISTRA" />
                        <asp:BoundField DataField="CreateDate" HeaderText="FECHA REGISTRO" />
                        <asp:BoundField DataField="Active" HeaderText="ACTIVA" />
                    </Columns>
                </asp:GridView>
            </form>
        </body>
        </html>
    </main>
</asp:Content>


