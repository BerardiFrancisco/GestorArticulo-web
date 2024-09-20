<%@ Page Title="Registro" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="GestorArticulo_web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow p-4" style="width: 25rem;">
            <h3 class="text-center mb-4">Registrarse</h3>
            <div class="mb-3">
                <label for="txtEmail" class="form-label">Correo electrónico</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Ingrese su correo"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtPassword" class="form-label">Contraseña</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server" placeholder="Ingrese su contraseña"></asp:TextBox>
            </div>
            <div class="d-grid gap-2">
                <asp:Button ID="btnRegistrar" CssClass="btn btn-warning" runat="server" Text="Registrarse" OnClick="btnRegistrar_Click" />
            </div>
            <div class="mt-3 text-center">
                <span>¿Ya tienes una cuenta?</span> <a href="Login.aspx" >Inicia sesión</a>
            </div>
        </div>
    </div>
</asp:Content>