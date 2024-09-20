<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="GestorArticulo_web.FormularioArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <h5 class="card-title text-center text-white bg-warning p-2 rounded">Formulario de Artículo</h5>
                        <div class="mb-3">
                            <label for="txtId" class="form-label text-warning">ID</label>
                            <asp:TextBox ID="txtId" CssClass="form-control border-warning" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="txtCodigo" class="form-label text-warning">Código</label>
                            <asp:TextBox ID="txtCodigo" CssClass="form-control border-warning" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="txtNombre" class="form-label text-warning">Nombre</label>
                            <asp:TextBox ID="txtNombre" CssClass="form-control border-warning" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="ddlCategoria" class="form-label text-warning">Categoría</label>
                            <asp:DropDownList ID="ddlCategoria" CssClass="form-select border-warning" runat="server"></asp:DropDownList>
                        </div>
                        <div class="mb-3">
                            <label for="ddlMarca" class="form-label text-warning">Marca</label>
                            <asp:DropDownList ID="ddlMarca" CssClass="form-select border-warning" runat="server"></asp:DropDownList>
                        </div>
                        <div class="mb-3">
                            <label for="txtDescripcion" class="form-label text-warning">Descripción</label>
                            <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control border-warning" runat="server"></asp:TextBox>
                        </div>
                        <asp:ScriptManager runat="server" />
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="mb-3">
                                    <label for="txtImagenUrl" class="form-label">Url Imagen</label>
                                    <asp:TextBox runat="server" ID="txtImagenUrl" CssClass="form-control"
                                        AutoPostBack="true" OnTextChanged="txtImagenUrl_TextChanged" />
                                </div>
                                <asp:Image ImageUrl="https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png"
                                    runat="server" ID="imgArticulo" Width="10%" />
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <div class="d-flex justify-content-between mt-4">
                            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-warning text-white" OnClick="btnAceptar_Click" />
                            <a href="ListadoArticulo.aspx" class="btn btn-outline-warning">Cancelar</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnEliminar" OnClick="btnEliminar_Click" runat="server" Text="Eliminar" CssClass="btn btn-danger text-white" />
                                    </div>
                    </div>
                    <%if (ConfirmarEliminacion)
                        {%>
                                    <div>
                                        <asp:CheckBox Text="Confirmar Eliminacion" runat="server" ID="chkConfirmarEliminacion" />
                                        <asp:Button ID="btnConfirmarEliminacion" runat="server" Text="Eliminar" OnClick="btnConfirmarEliminacion_Click" CssClass="btn btn-outline-danger" />
                                    </div>
                                    <%}%>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
