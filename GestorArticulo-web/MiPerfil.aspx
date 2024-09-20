<%@ Page Title="Mi Perfil" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="GestorArticulo_web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validarSoloLetras(event) {
            // Obtener el código de la tecla presionada
            var key = event.keyCode || event.which;

            // Permitir solo letras (mayúsculas y minúsculas), backspace (tecla 8), y espacio (tecla 32)
            if ((key >= 65 && key <= 90) || (key >= 97 && key <= 122) || key === 8 || key === 32) {
                return true; // Permitir la tecla
            }

            return false; // Bloquear la tecla
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-sm">
                    <div class="card-header bg-warning text-white text-center">
                        <h4>Mi Perfil</h4>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="txtEmail" class="form-label">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Enabled="true" />
                        </div>
                        <div class="mb-3">
                            <label for="txtNombre" class="form-label">Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Enabled="true" onkeypress="return validarSoloLetras(event)"  />
                        </div>
                        <div class="mb-3">
                            <label for="txtApellido" class="form-label">Apellido</label>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" Enabled="true" onkeypress="return validarSoloLetras(event)" />
                        </div>
                        <div class="mb-3">
                            <label for="txtFechaNacimiento" class="form-label">Fecha de Nacimiento</label>
                            <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" Enabled="true" TextMode="Date" AutoPostBack="true" />
                        </div>
                        <div class="d-flex justify-content-end">
                            <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-success" Text="Guardar" OnClick="btnGuardar_Click"  Visible="true" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
