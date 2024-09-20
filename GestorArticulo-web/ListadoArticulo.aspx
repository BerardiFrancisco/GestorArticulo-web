<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="ListadoArticulo.aspx.cs" Inherits="GestorArticulo_web.ListadoArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <div class="container mt-4">
        <h1 class="text-center text-warning mb-4">Lista de Artículos</h1>

        <div class="row mb-3">
            <div class="col-md-4">
                <label for="txtFiltro" class="form-label text-warning">Filtrar por Nombre o Descripción</label>
                <asp:TextBox runat="server" ID="txtFiltro" CssClass="form-control border-warning" OnTextChanged="filtro_TextChanged" AutoPostBack="true" placeholder="Ingrese búsqueda..." />
            </div>
            <div class="col-md-4">
                <label for="ddlFiltroCategoria" class="form-label text-warning">Filtrar por Categoría</label>
                <asp:DropDownList runat="server" ID="ddlFiltroCategoria" CssClass="form-select border-warning" OnSelectedIndexChanged="ddlFiltroCategoria_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Celulares" Value="Celulares" />
                    <asp:ListItem Text="Televisores" Value="Televisores" />
                    <asp:ListItem Text="Media" Value="Media" />
                    <asp:ListItem Text="Audio" Value="Audio"/>
                </asp:DropDownList>
            </div>
        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="table-responsive">
            <ContentTemplate>
                <asp:GridView ID="dgvArticulos" runat="server" CssClass="table table-hover table-striped border border-warning" AutoGenerateColumns="false" DataKeyNames="Id"
                    OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged"
                    OnPageIndexChanging="dgvArticulos_PageIndexChanging" AllowPaging="true" PageSize="5">
                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center"/>
                        <asp:BoundField HeaderText="Código" DataField="Codigo" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center"/>
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center"/>
                        <asp:BoundField HeaderText="Descripción" DataField="Descripcion" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center"/>
                        <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center"/>
                        <asp:BoundField HeaderText="Categoría" DataField="Categoria.Descripcion" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center"/>
                        <asp:BoundField HeaderText="Precio" DataField="Precio" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center"/>
                        <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="Seleccionar" ButtonType="Link" HeaderStyle-CssClass="table-warning" ItemStyle-CssClass="text-center" />
                    </Columns>
                </asp:GridView>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
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
            </ContentTemplate>
        </asp:UpdatePanel>

        <div class="text-center">
            <a href="FormularioArticulo.aspx" class="btn btn-primary mt-3">Agregar Nuevo Artículo</a>
        </div>
    </div>
</asp:Content>
